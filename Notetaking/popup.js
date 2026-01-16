let currentNotes = [];
let currentUrls = [];
let editingIndex = -1;
let sortMode = 'newest';
let searchQuery = '';

document.addEventListener('DOMContentLoaded', () => {
    loadNotes();
    loadTodo();
    loadUrls();
    
    // Safety check for the version element
    const vElement = document.getElementById('ext-version');
    if (vElement) {
        vElement.innerText = chrome.runtime.getManifest().version;
    }
});

function formatDate(ts) {
    if (!ts) return "";
    const d = new Date(ts);
    return d.toLocaleDateString([], { month: 'short', day: 'numeric' }) + ', ' + 
           d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false });
}

// NAVIGATION
const showView = (v) => {
    document.querySelectorAll('.page').forEach(p => p.style.display = 'none');
    document.getElementById(v).style.display = 'block';
    document.querySelectorAll('nav button').forEach(b => b.classList.remove('active'));
    const btnMap = {'note-list-view':'nav-notes','note-edit-view':'nav-notes','todo-view':'nav-todo', 'url-view':'nav-urls', 'about-view':'nav-about'};
    if(btnMap[v]) document.getElementById(btnMap[v]).classList.add('active');
    document.getElementById('main-nav').style.display = (v === 'note-edit-view') ? 'none' : 'flex';
};

document.getElementById('nav-notes').onclick = () => { loadNotes(); showView('note-list-view'); };
document.getElementById('nav-todo').onclick = () => showView('todo-view');
document.getElementById('nav-urls').onclick = () => { loadUrls(); showView('url-view'); };
document.getElementById('nav-about').onclick = () => showView('about-view');

// NOTES LOGIC
function loadNotes() {
    chrome.storage.local.get(['notes'], (res) => {
        currentNotes = res.notes || [];
        renderNotes();
    });
}

function renderNotes() {
    const container = document.getElementById('notes-container');
    const toolbar = document.getElementById('bulk-toolbar');
    container.innerHTML = '';
    
    let filtered = currentNotes.filter(n => 
        n.title.toLowerCase().includes(searchQuery.toLowerCase()) || 
        n.content.toLowerCase().includes(searchQuery.toLowerCase())
    );

    if (sortMode === 'newest') filtered.sort((a, b) => (b.time || 0) - (a.time || 0));
    else filtered.sort((a, b) => a.title.localeCompare(b.title));

    toolbar.style.display = filtered.length ? 'flex' : 'none';

    filtered.forEach((n) => {
        const originalIndex = currentNotes.indexOf(n);
        const item = document.createElement('div');
        item.className = 'note-item';
        item.innerHTML = `
            <input type="checkbox" class="note-checkbox" data-index="${originalIndex}">
            <div class="note-info" style="flex:1; margin-left:12px; cursor:pointer; overflow:hidden;">
                <div class="note-info-header">
                    <span class="note-item-title">${n.title || 'Untitled'}</span>
                    <span class="note-date">${formatDate(n.time)}</span>
                </div>
                <div class="note-item-snippet">${n.content.substring(0, 45)}...</div>
            </div>`;
        item.querySelector('.note-info').onclick = () => openEditor(originalIndex);
        container.appendChild(item);
    });
}

document.getElementById('note-search').oninput = (e) => { searchQuery = e.target.value; renderNotes(); };
document.getElementById('btn-sort').onclick = () => {
    sortMode = (sortMode === 'newest') ? 'alphabetical' : 'newest';
    document.getElementById('sort-label').innerText = sortMode.toUpperCase();
    renderNotes();
};

// EDITOR
function openEditor(i) {
    editingIndex = i;
    document.getElementById('edit-title').value = i === -1 ? '' : currentNotes[i].title;
    document.getElementById('edit-content').value = i === -1 ? '' : currentNotes[i].content;
    document.getElementById('btn-delete-single').style.display = i === -1 ? 'none' : 'flex';
    showView('note-edit-view');
}

document.getElementById('btn-add-new').onclick = () => openEditor(-1);
document.getElementById('btn-back').onclick = () => showView('note-list-view');

document.getElementById('btn-save-note').onclick = () => {
    const title = document.getElementById('edit-title').value.trim() || 'Untitled';
    const content = document.getElementById('edit-content').value;
    const note = { title, content, time: Date.now() };
    if(editingIndex === -1) currentNotes.unshift(note);
    else currentNotes[editingIndex] = note;
    chrome.storage.local.set({notes: currentNotes}, () => { showView('note-list-view'); loadNotes(); });
};

document.getElementById('btn-delete-single').onclick = () => {
    if(confirm('Delete?')) {
        currentNotes.splice(editingIndex, 1);
        chrome.storage.local.set({notes: currentNotes}, () => { showView('note-list-view'); loadNotes(); });
    }
};

// BULK ACTIONS
document.getElementById('btn-select-all').onclick = () => {
    const cbs = document.querySelectorAll('.note-checkbox');
    const all = Array.from(cbs).every(cb => cb.checked);
    checkboxes.forEach(cb => cb.checked = !all);
};

document.getElementById('btn-bulk-delete').onclick = () => {
    const sel = Array.from(document.querySelectorAll('.note-checkbox:checked')).map(cb => parseInt(cb.dataset.index));
    if(sel.length && confirm(`Delete ${sel.length} notes?`)) {
        currentNotes = currentNotes.filter((_, i) => !sel.includes(i));
        chrome.storage.local.set({notes: currentNotes}, loadNotes);
    }
};

document.getElementById('btn-bulk-export').onclick = () => {
    const sel = Array.from(document.querySelectorAll('.note-checkbox:checked')).map(cb => parseInt(cb.dataset.index));
    if(!sel.length) return alert("Select notes first");
    let out = "EXPORTED NOTES\n\n";
    sel.forEach(idx => { out += `${currentNotes[idx].title} (${formatDate(currentNotes[idx].time)})\n${currentNotes[idx].content}\n---\n\n`; });
    downloadFile("my_notes.txt", out);
};

document.getElementById('btn-export-single').onclick = () => {
    const title = document.getElementById('edit-title').value || 'Note';
    downloadFile(`${title}.txt`, document.getElementById('edit-content').value);
};

// URLS
function loadUrls() { chrome.storage.local.get(['urls'], (res) => { currentUrls = res.urls || []; renderUrls(); }); }
function renderUrls() {
    const c = document.getElementById('urls-container'); c.innerHTML = '';
    currentUrls.forEach((u, i) => {
        const item = document.createElement('div'); item.className = 'note-item';
        item.innerHTML = `
            <div style="flex:1; overflow:hidden;">
                <div class="note-item-title">${u.title}</div>
                <div class="note-item-snippet">${u.url}</div>
            </div>
            <div style="display:flex; gap:5px;">
                <button class="open-url pill-btn" data-url="${u.url}">Open</button>
                <button class="del-url pill-btn-danger" style="padding:4px 10px;" data-index="${i}">×</button>
            </div>`;
        c.appendChild(item);
    });
    document.querySelectorAll('.open-url').forEach(b => b.onclick = (e) => chrome.tabs.create({url: e.target.dataset.url}));
    document.querySelectorAll('.del-url').forEach(b => b.onclick = (e) => {
        currentUrls.splice(e.target.dataset.index, 1);
        chrome.storage.local.set({urls: currentUrls}, renderUrls);
    });
}
document.getElementById('btn-add-current-tab').onclick = async () => {
    let [tab] = await chrome.tabs.query({active:true, currentWindow:true});
    currentUrls.unshift({title: tab.title, url: tab.url});
    chrome.storage.local.set({urls: currentUrls}, renderUrls);
};
document.getElementById('btn-add-url-manual').onclick = () => {
    const f = document.getElementById('url-form');
    f.style.display = f.style.display === 'none' ? 'block' : 'none';
};
document.getElementById('btn-clear-url').onclick = () => {
    document.getElementById('url-title-input').value = "";
    document.getElementById('url-link-input').value = "";
};
document.getElementById('btn-cancel-url').onclick = () => {
    document.getElementById('url-form').style.display = 'none';
};
document.getElementById('btn-save-url').onclick = () => {
    const title = document.getElementById('url-title-input').value;
    const url = document.getElementById('url-link-input').value;
    if(!url) return;
    currentUrls.unshift({title: title || 'Link', url: url});
    chrome.storage.local.set({urls: currentUrls}, () => { 
        document.getElementById('url-title-input').value = "";
        document.getElementById('url-link-input').value = "";
        document.getElementById('url-form').style.display='none'; 
        renderUrls(); 
    });
};

// TODO
document.getElementById('save-todo').onclick = () => chrome.storage.local.set({todo: document.getElementById('todo-input').value}, () => alert('Saved'));
document.getElementById('clear-todo').onclick = () => {
    if(confirm('Clear the entire To-Do list?')) {
        document.getElementById('todo-input').value = "";
        chrome.storage.local.set({todo: ""});
    }
};
document.getElementById('export-todo').onclick = () => downloadFile("tasks.md", document.getElementById('todo-input').value);
function loadTodo() { chrome.storage.local.get(['todo'], (r) => document.getElementById('todo-input').value = r.todo || ""); }

function downloadFile(f, t) {
    const e = document.createElement('a');
    e.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(t));
    e.setAttribute('download', f);
    document.body.appendChild(e); e.click(); document.body.removeChild(e);
}