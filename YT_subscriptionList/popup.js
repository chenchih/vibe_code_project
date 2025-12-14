let scrapedData = []; 

// --- TOGGLE ABOUT SECTION ---
document.getElementById('aboutToggle').addEventListener('click', (e) => {
    e.preventDefault(); // Stop link from jumping
    const details = document.getElementById('aboutDetails');
    if (details.style.display === 'block') {
        details.style.display = 'none';
    } else {
        details.style.display = 'block';
    }
});

// Open YT Page
document.getElementById('openYtPage').addEventListener('click', () => {
    chrome.tabs.create({ url: 'https://www.youtube.com/feed/channels' });
});

// --- SCRAPE BUTTON ---
document.getElementById('scrapeBtn').addEventListener('click', async () => {
    const statusDiv = document.getElementById('status');
    const exportSection = document.getElementById('exportSection');
    const loader = document.getElementById('loader');
    const scrapeBtn = document.getElementById('scrapeBtn');
    
    scrapedData = [];
    exportSection.style.display = 'none';
    
    // Show Spinner
    loader.style.display = 'block';
    scrapeBtn.disabled = true;
    scrapeBtn.innerText = "Processing...";
    statusDiv.innerText = "";

    let [tab] = await chrome.tabs.query({ active: true, currentWindow: true });

    if (!tab.url.includes("youtube.com/feed/channels")) {
        statusDiv.innerText = "Error: Please go to 'My Subscriptions Page' link above.";
        loader.style.display = 'none';
        scrapeBtn.disabled = false;
        scrapeBtn.innerText = "Scrape Subscriptions";
        return;
    }

    // Inject Script
    chrome.scripting.executeScript({
        target: { tabId: tab.id },
        files: ['content.js']
    });
});

// --- RECEIVE DATA ---
chrome.runtime.onMessage.addListener((request, sender, sendResponse) => {
    if (request.action === "dataScraped") {
        scrapedData = request.data;
        
        const statusDiv = document.getElementById('status');
        const exportSection = document.getElementById('exportSection');
        const loader = document.getElementById('loader');
        const scrapeBtn = document.getElementById('scrapeBtn');

        loader.style.display = 'none';
        scrapeBtn.disabled = false;
        scrapeBtn.innerText = "Scrape Again";

        statusDiv.innerHTML = `<strong>Done!</strong> Found ${scrapedData.length} channels.<br>Select format:`;
        exportSection.style.display = 'block'; 
    }
});

// --- EXPORT CSV ---
document.getElementById('csvBtn').addEventListener('click', () => {
    if (scrapedData.length === 0) return;
    let csvContent = "\uFEFFName,ID\n"; 
    scrapedData.forEach(row => {
        const safeName = `"${row.name.replace(/"/g, '""')}"`;
        const safeId = `"${row.id.replace(/"/g, '""')}"`;
        csvContent += `${safeName},${safeId}\n`;
    });
    downloadFile(csvContent, 'text/csv;charset=utf-8', 'youtube_subs.csv');
});

// --- EXPORT TXT ---
document.getElementById('txtBtn').addEventListener('click', () => {
    if (scrapedData.length === 0) return;
    let txtContent = "YouTube Subscriptions Export\n============================\n\n";
    scrapedData.forEach(row => {
        txtContent += `Name:  ${row.name}\nID:    ${row.id}\nIntro: ${row.intro}\n----------------------------------------\n`;
    });
    downloadFile(txtContent, 'text/plain;charset=utf-8', 'youtube_subs.txt');
});

function downloadFile(content, mimeType, filename) {
    const blob = new Blob([content], { type: mimeType });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
}