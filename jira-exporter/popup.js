// --- 1. CORE BUTTON LISTENERS ---
document.getElementById('copyBtn').addEventListener('click', () => runAction('copy'));
document.getElementById('downloadBtn').addEventListener('click', () => runAction('download-txt'));
document.getElementById('csvBtn').addEventListener('click', () => runAction('download-csv'));

// --- 2. ABOUT BUTTON LOGIC (Fixed) ---
document.getElementById('aboutBtn').addEventListener('click', () => {
  const aboutDiv = document.getElementById('about-section');
  
  // Toggle Visibility
  if (aboutDiv.style.display === 'block') {
    aboutDiv.style.display = 'none';
  } else {
    aboutDiv.style.display = 'block';
    
    // Get version from manifest.json automatically
    try {
      const manifest = chrome.runtime.getManifest();
      const versionSpan = document.getElementById('version-number');
      if (versionSpan) {
        versionSpan.innerText = "v" + manifest.version;
      }
    } catch (e) {
      console.error("Could not read manifest version", e);
    }
  }
});

// --- 3. FEEDBACK BUTTON LOGIC (Fixed) ---
document.getElementById('feedbackBtn').addEventListener('click', () => {
  // IMPORTANT: Replace this with your actual email
  const email = "your-email@example.com"; 
  const subject = "Jira Exporter Feedback";
  const body = "Hi, I have a suggestion or found a bug...";
  
  const mailtoLink = `mailto:${email}?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`;
  chrome.tabs.create({ url: mailtoLink });
});

// --- 4. MAIN ACTION LOGIC ---
function runAction(action) {
  const statusDiv = document.getElementById('status');
  statusDiv.innerText = "Processing...";

  chrome.tabs.query({active: true, currentWindow: true}, (tabs) => {
    chrome.scripting.executeScript({
      target: {tabId: tabs[0].id},
      function: scrapeJiraContent, 
    }, (results) => {
      
      if (chrome.runtime.lastError || !results || !results[0]) {
        statusDiv.innerText = "Error: Refresh Page";
        statusDiv.style.color = "red";
        return;
      }

      const data = results[0].result; 

      // --- FORMATTING LOGIC ---
      let finalContent = "";
      let filename = `${data.id || 'ticket'}.txt`;
      let mimeType = 'text/plain';

      if (action === 'download-csv') {
        // --- CSV FORMAT ---
        filename = `${data.id || 'ticket'}.csv`;
        mimeType = 'text/csv;charset=utf-8;';
        
        const toCsv = (text) => {
            if (!text) return '""';
            return `"${text.replace(/"/g, '""')}"`; 
        };

        const csvRows = [];

        csvRows.push(["Project", data.project]);
        csvRows.push(["Title", `${data.id} ${data.title}`]);
        csvRows.push(["Description", data.desc]);

        if (data.steps) csvRows.push(["Step to Reproduce", data.steps]);
        if (data.actual) csvRows.push(["Actual Results", data.actual]);
        if (data.expected) csvRows.push(["Expected Results", data.expected]);
        if (data.firmware) csvRows.push(["Firmware Version", data.firmware]);

        finalContent = '\uFEFF'; 
        csvRows.forEach(row => {
            finalContent += `${toCsv(row[0])},${toCsv(row[1])}\n`;
        });

      } else {
        // --- TXT FORMAT ---
        finalContent = `Project: ${data.project}\nTitle: ${data.id} ${data.title}\n\nDESCRIPTION:\n${data.desc}`;
        
        if (data.steps) finalContent += `\n\nStep to Reproduce:\n${data.steps}`;
        if (data.actual) finalContent += `\n\nActual Results:\n${data.actual}`;
        if (data.expected) finalContent += `\n\nExpected Results:\n${data.expected}`;
        if (data.firmware) finalContent += `\n\nFirmware Version:\n${data.firmware}`;
      }

      // --- EXECUTE ACTION ---
      if (action === 'copy') {
        navigator.clipboard.writeText(finalContent).then(() => {
          statusDiv.innerText = "Copied to Clipboard!";
          setTimeout(() => statusDiv.innerText = "", 3000);
        }).catch(() => statusDiv.innerText = "Copy Failed");
      } else {
        const blob = new Blob([finalContent], { type: mimeType });
        const url = URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = filename;
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        statusDiv.innerText = "Downloaded!";
      }
    });
  });
}

// === This function runs INSIDE the Jira page ===
function scrapeJiraContent() {

  function formatText(rawText) {
    if (!rawText) return "";
    return rawText
      .replace(/Show \d+ more/gi, '')
      .replace(/Hide/g, '')
      .replace(/[ \t]+$/gm, '')       
      .replace(/^[ \t]+/gm, '')       
      .replace(/(\r\n|\n|\r)+/g, '\n') 
      .trim();
  }

  function getElement(list) {
    for (let selector of list) {
      const el = document.querySelector(selector);
      if (el) return el;
    }
    return null;
  }

  function getFieldByLabel(labelText) {
    const xpath = `//*[contains(text(), '${labelText}')]`;
    const snapshot = document.evaluate(xpath, document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);

    for (let i = 0; i < snapshot.snapshotLength; i++) {
      let labelNode = snapshot.snapshotItem(i);
      let container = labelNode.parentElement; 
      let nextSibling = container ? container.nextElementSibling : null;
      let grandParentNext = (container && container.parentElement) ? container.parentElement.nextElementSibling : null;

      let rawValue = "";

      if (container && container.innerText.length > labelText.length + 5) {
         let clone = container.cloneNode(true);
         clone.childNodes.forEach(child => {
           if (child.innerText && child.innerText.includes(labelText)) child.remove();
         });
         rawValue = clone.innerText;
      } 
      else if (nextSibling && nextSibling.innerText.trim().length > 0) {
         rawValue = nextSibling.innerText;
      }
      else if (grandParentNext && grandParentNext.innerText.trim().length > 0) {
         rawValue = grandParentNext.innerText;
      }

      if (rawValue.trim().length > 0) {
         const tempDiv = document.createElement('div');
         tempDiv.innerHTML = rawValue;
         tempDiv.querySelectorAll('.icon, button, .visually-hidden').forEach(el => el.remove());
         let cleanString = tempDiv.innerText.replace(labelText, '').trim();
         return formatText(cleanString);
      }
    }
    return ""; 
  }

  // --- EXTRACTION ---
  
  // 1. Project
  const projectSelectors = ['#project-name-val', '[data-testid="issue.views.issue-base.foundation.breadcrumbs.project-container"]', '.aui-nav-breadcrumbs li:first-child a', 'a[href*="/browse/"][id*="project"]'];
  const projectEl = getElement(projectSelectors);
  let projectText = projectEl ? projectEl.innerText.trim() : '';
  projectText = projectText.replace(/\[.*?\]/g, '').trim();

  // 2. ID
  const keyEl = getElement(['[data-testid="issue.views.issue-base.foundation.breadcrumbs.current-issue-link"]', '#key-val', '.issue-link']);
  const ticketId = keyEl ? keyEl.innerText.trim() : '';

  // 3. Title (INCLUDES FIX FOR NEW JIRA LAYOUT)
  const titleSelectors = [
    '[data-testid="issue.views.issue-base.foundation.summary.heading"]', // Cloud
    '#summary-val', // Server New (matches div or h1)
    'h1#summary-val', // Server Old
    'h1', // Fallback
    'h2' // Fallback for very new layouts
  ];
  const titleEl = getElement(titleSelectors);
  const titleText = titleEl ? titleEl.innerText.trim() : 'Title Not Found';

  // 4. Description
  const descSelectors = ['[data-testid="issue.views.issue-base.foundation.description.description-field-content"]', '#description-val', '#description-module .mod-content'];
  const descEl = getElement(descSelectors);
  let cleanDesc = "";

  if (descEl) {
    const clone = descEl.cloneNode(true);
    const junkSelectors = ['button', '[role="button"]', '.icon', '.aui-icon', '.overlay-icon', '.hidden', '.visually-hidden'];
    junkSelectors.forEach(sel => clone.querySelectorAll(sel).forEach(el => el.remove()));
    clone.querySelectorAll('[data-mention-id], a.user-hover').forEach(el => el.replaceWith('[User Redacted]'));
    cleanDesc = formatText(clone.innerText);
  }

  // 5. Custom Fields
  const stepToReproduce = getFieldByLabel("Step to Reproduce") || getFieldByLabel("Steps to Reproduce");
  const actualResults   = getFieldByLabel("Actual Results");
  const expectedResults = getFieldByLabel("Expected Results");
  const firmwareVersion = getFieldByLabel("Firmware Version") || getFieldByLabel("Firmware version");

  return {
    project: projectText,
    id: ticketId,
    title: titleText,
    desc: cleanDesc,
    steps: stepToReproduce,
    actual: actualResults,
    expected: expectedResults,
    firmware: firmwareVersion
  };
}