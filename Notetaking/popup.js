/*******************************************************
 * Quick Note Tracker — SYNC VERSION (Cross-device)
 *
 * What changed vs your original:
 * - Uses chrome.storage.sync instead of chrome.storage.local
 * - Adds "chunked" storage helpers to avoid sync quota per-item size limit
 * - Migrates existing local data to sync ONE time after update
 *******************************************************/

let currentNotes = [];
let currentUrls = [];
let editingIndex = -1;
let editingUrlIndex = -1;
let sortMode = 'newest';
let searchQuery = '';
let urlPage = 1;
const urlsPerPage = 5;

/** Storage areas */
const SYNC = chrome.storage.sync;
const LOCAL = chrome.storage.local;

/**
 * chrome.storage.sync has a per-item quota (roughly ~8KB per key).
 * If you store a big array under one key, it will eventually fail.
 * So we split JSON into multiple keys ("chunks").
 */
const CHUNK_SIZE = 7000; // keep safely under per-item limit

/** Prefixes for chunked payloads */
const KEY_NOTES = 'qnt_notes';
const KEY_URLS  = 'qnt_urls';
const KEY_TODO  = 'qnt_todo';

/** Migration flag */
const MIGRATION_FLAG = 'qnt_migrated_to_sync_v1';

/** ------------------ Chunked Storage Helpers ------------------ */

function getChunkKeys(prefix, n) {
  const keys = [];
  for (let i = 0; i < n; i++) keys.push(`${prefix}__${i}`);
  return keys;
}

function storageGetChunked(area, prefix, cb) {
  const metaKey = `${prefix}__meta`;
  area.get([metaKey], (metaRes) => {
    const meta = metaRes[metaKey];
    if (!meta || typeof meta.chunks !== 'number' || meta.chunks <= 0) {
      cb(null);
      return;
    }

    const keys = getChunkKeys(prefix, meta.chunks);
    area.get(keys, (dataRes) => {
      let jsonStr = '';
      for (const k of keys) jsonStr += (dataRes[k] || '');

      try {
        cb(JSON.parse(jsonStr));
      } catch (e) {
        console.warn('Failed to parse chunked data for', prefix, e);
        cb(null);
      }
    });
  });
}

function storageSetChunked(area, prefix, value, cb) {
  const metaKey = `${prefix}__meta`;
  const jsonStr = JSON.stringify(value);

  const chunks = [];
  for (let i = 0; i < jsonStr.length; i += CHUNK_SIZE) {
    chunks.push(jsonStr.slice(i, i + CHUNK_SIZE));
  }

  // prepare new items
  const items = {};
  items[metaKey] = { chunks: chunks.length, updated: Date.now() };
  chunks.forEach((chunk, i) => {
    items[`${prefix}__${i}`] = chunk;
  });

  // remove old extra chunks if the new payload is smaller
  area.get([metaKey], (oldMetaRes) => {
    const oldMeta = oldMetaRes[metaKey];
    const removeKeys = [];

    if (oldMeta && typeof oldMeta.chunks === 'number' && oldMeta.chunks > chunks.length) {
      for (let i = chunks.length; i < oldMeta.chunks; i++) {
        removeKeys.push(`${prefix}__${i}`);
      }
    }

    area.set(items, () => {
      if (removeKeys.length) {
        area.remove(removeKeys, () => cb && cb());
      } else {
        cb && cb();
      }
    });
  });
}

/** ------------------ One-time Migration (local -> sync) ------------------ */

function migrateLocalToSyncOnce(done) {
  SYNC.get([MIGRATION_FLAG], (flagRes) => {
    if (flagRes[MIGRATION_FLAG]) {
      done && done();
      return;
    }

    // If sync already has data, don't overwrite it—just mark migrated.
    SYNC.get([`${KEY_NOTES}__meta`, `${KEY_URLS}__meta`, `${KEY_TODO}__meta`], (syncMeta) => {
      const syncHasNotes = !!syncMeta[`${KEY_NOTES}__meta`];
      const syncHasUrls  = !!syncMeta[`${KEY_URLS}__meta`];
      const syncHasTodo  = !!syncMeta[`${KEY_TODO}__meta`];

      if (syncHasNotes || syncHasUrls || syncHasTodo) {
        SYNC.set({ [MIGRATION_FLAG]: true }, () => done && done());
        return;
      }

      // Pull from local and copy to sync
      LOCAL.get(['notes', 'urls', 'todo'], (localRes) => {
        const localNotes = localRes.notes || [];
        const localUrls  = localRes.urls  || [];
        const localTodo  = localRes.todo  || '';

        let pending = 3;

        storageSetChunked(SYNC, KEY_NOTES, localNotes, () => {
          if (--pending === 0) finish();
        });

        storageSetChunked(SYNC, KEY_URLS, localUrls, () => {
          if (--pending === 0) finish();
        });

        storageSetChunked(SYNC, KEY_TODO, { text: localTodo }, () => {
          if (--pending === 0) finish();
        });

        function finish() {
          SYNC.set({ [MIGRATION_FLAG]: true }, () => done && done());
        }
      });
    });
  });
}

/** ------------------ UI + App Logic (mostly your original) ------------------ */

document.addEventListener('DOMContentLoaded', () => {
  migrateLocalToSyncOnce(() => {
    loadNotes();
    loadTodo();
    loadUrls();
    const vElement = document.getElementById('ext-version');
    if (vElement) vElement.innerText = chrome.runtime.getManifest().version;
  });
});

function formatDate(ts) {
  if (!ts) return "";
  const d = new Date(ts);
  const y = d.getFullYear();
  const m = String(d.getMonth() + 1).padStart(2, '0');
  const day = String(d.getDate()).padStart(2, '0');
  const h = String(d.getHours()).padStart(2, '0');
  const min = String(d.getMinutes()).padStart(2, '0');
  const s = String(d.getSeconds()).padStart(2, '0');
  return `${y}/${m}/${day}, ${h}:${min}:${s}`;
}

function convertToCSV(data, headers) {
  const csvRows = [headers.join(',')];
  for (const row of data) {
    csvRows.push(row.map(v => `"${('' + v).replace(/"/g, '""')}"`).join(','));
  }
  return csvRows.join('\n');
}

function downloadFile(f, t, type = 'data:text/plain;charset=utf-8,') {
  const e = document.createElement('a');
  e.setAttribute('href', type + encodeURIComponent(t));
  e.setAttribute('download', f);
  document.body.appendChild(e); e.click(); document.body.removeChild(e);
}

const showView = (v) => {
  document.querySelectorAll('.page').forEach(p => p.style.display = 'none');
  document.getElementById(v).style.display = 'block';
  document.querySelectorAll('nav button').forEach(b => b.classList.remove('active'));
  const btnMap = {'note-list-view':'nav-notes','note-edit-view':'nav-notes','todo-view':'nav-todo', 'url-view':'nav-urls', 'about-view':'nav-about'};
  if(btnMap[v]) document.getElementById(btnMap[v]).classList.add('active');
  document.getElementById('main-nav').style.display = (v === 'note-edit-view') ? 'none' : 'flex';
};

document.getElementById('nav-notes').onclick = () => { loadNotes(); showView('note-list-view'); };
document.getElementById('nav-todo').onclick = () => { loadTodo(); showView('todo-view'); };
document.getElementById('nav-urls').onclick = () => { loadUrls(); showView('url-view'); };
document.getElementById('nav-about').onclick = () => showView('about-view');

// --- NOTES ---
function loadNotes() {
  storageGetChunked(SYNC, KEY_NOTES, (res) => {
    currentNotes = Array.isArray(res) ? res : [];
    renderNotes();
  });
}

function saveNotes(cb) {
  storageSetChunked(SYNC, KEY_NOTES, currentNotes, cb);
}

function renderNotes() {
  const container = document.getElementById('notes-container');
  const toolbar = document.getElementById('bulk-toolbar');
  container.innerHTML = '';

  let filtered = currentNotes.filter(n =>
    (n.title || "").toLowerCase().includes(searchQuery.toLowerCase()) ||
    (n.content || "").toLowerCase().includes(searchQuery.toLowerCase())
  );

  if (sortMode === 'newest') filtered.sort((a, b) => (b.time || 0) - (a.time || 0));
  else filtered.sort((a, b) => (a.title || "").localeCompare(b.title || ""));

  toolbar.style.display = filtered.length ? 'flex' : 'none';

  if (!filtered.length) {
    container.innerHTML = `<div class="empty-state">No notes found.</div>`;
    return;
  }

  filtered.forEach((n) => {
    const originalIndex = currentNotes.indexOf(n);
    const item = document.createElement('div');
    item.className = 'note-item';
    item.innerHTML = `
      <input type="checkbox" class="note-checkbox" data-index="${originalIndex}">
      <div class="note-info">
        <div class="note-info-header">
          <span class="note-item-title">${n.title || 'Untitled'}</span>
          <span class="note-date">${formatDate(n.time)}</span>
        </div>
        <div class="note-item-snippet">${(n.content || "").substring(0, 45)}...</div>
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

function openEditor(i) {
  editingIndex = i;
  document.getElementById('edit-title').value = i === -1 ? '' : currentNotes[i].title;
  document.getElementById('edit-content').value = i === -1 ? '' : currentNotes[i].content;
  document.getElementById('btn-delete-single').style.display = i === -1 ? 'none' : 'block';
  showView('note-edit-view');
}

document.getElementById('btn-add-new').onclick = () => openEditor(-1);
document.getElementById('btn-back').onclick = () => showView('note-list-view');
document.getElementById('btn-clear-note').onclick = () => {
  document.getElementById('edit-title').value = "";
  document.getElementById('edit-content').value = "";
};
document.getElementById('btn-cancel-note').onclick = () => showView('note-list-view');

document.getElementById('btn-save-note').onclick = () => {
  const title = document.getElementById('edit-title').value.trim() || 'Untitled';
  const content = document.getElementById('edit-content').value;
  const note = { title, content, time: Date.now() };

  if (editingIndex === -1) currentNotes.unshift(note);
  else currentNotes[editingIndex] = note;

  saveNotes(() => { showView('note-list-view'); loadNotes(); });
};

document.getElementById('btn-delete-single').onclick = () => {
  if (confirm('Delete?')) {
    currentNotes.splice(editingIndex, 1);
    saveNotes(() => { showView('note-list-view'); loadNotes(); });
  }
};

document.getElementById('btn-select-all').onclick = () => {
  const cbs = document.querySelectorAll('#note-list-view .note-checkbox');
  const allChecked = Array.from(cbs).every(cb => cb.checked);
  cbs.forEach(cb => cb.checked = !allChecked);
};

document.getElementById('btn-bulk-delete').onclick = () => {
  const sel = Array.from(document.querySelectorAll('#note-list-view .note-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));

  if (sel.length && confirm(`Delete ${sel.length}?`)) {
    currentNotes = currentNotes.filter((_, i) => !sel.includes(i));
    saveNotes(loadNotes);
  }
};

document.getElementById('btn-bulk-export').onclick = () => {
  const sel = Array.from(document.querySelectorAll('#note-list-view .note-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));
  if (!sel.length) return;

  let out = "EXPORTED NOTES\n\n";
  sel.forEach(idx => {
    out += `${currentNotes[idx].title} (${formatDate(currentNotes[idx].time)})\n${currentNotes[idx].content}\n---\n\n`;
  });
  downloadFile("my_notes.txt", out);
};

document.getElementById('btn-bulk-export-csv').onclick = () => {
  const sel = Array.from(document.querySelectorAll('#note-list-view .note-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));
  if (!sel.length) return;

  const dataRows = sel.map(idx => [currentNotes[idx].title, formatDate(currentNotes[idx].time), currentNotes[idx].content]);
  downloadFile("my_notes.csv", convertToCSV(dataRows, ["Title", "Date", "Content"]), 'text/csv;charset=utf-8;');
};

document.getElementById('btn-export-single').onclick = () => {
  downloadFile(`${document.getElementById('edit-title').value || 'Note'}.txt`,
    document.getElementById('edit-content').value);
};


// --- URLS ---
function loadUrls() {
  storageGetChunked(SYNC, KEY_URLS, (res) => {
    currentUrls = Array.isArray(res) ? res : [];
    renderUrls();
  });
}

function saveUrls(cb) {
  storageSetChunked(SYNC, KEY_URLS, currentUrls, cb);
}

function renderUrls() {
  const container = document.getElementById('urls-container');
  const toolbar = document.getElementById('bulk-toolbar-urls');
  container.innerHTML = '';
  toolbar.style.display = currentUrls.length ? 'flex' : 'none';

  if (!currentUrls.length) {
    container.innerHTML = `<div class="empty-state">No links saved.</div>`;
    document.getElementById('url-pagination').innerHTML = '';
    return;
  }

  const totalPages = Math.ceil(currentUrls.length / urlsPerPage);
  if (urlPage > totalPages) urlPage = totalPages || 1;

  const paginatedUrls = currentUrls.slice((urlPage - 1) * urlsPerPage, urlPage * urlsPerPage);

  paginatedUrls.forEach((u, i) => {
    const actualIdx = ((urlPage - 1) * urlsPerPage) + i;
    const item = document.createElement('div');
    item.className = 'note-item';
    item.innerHTML = `
      <input type="checkbox" class="url-checkbox" data-index="${actualIdx}">
      <div class="note-info" style="margin-left:14px;">
        <div class="note-item-title">${u.title}</div>
        <div class="note-item-snippet">${u.url}</div>
      </div>
      <div style="display:flex; gap:5px;">
        <button class="open-url pill-btn-neutral" style="padding:0 10px; height:34px;" data-url="${u.url}">Open</button>
        <button class="edit-url pill-btn-neutral" style="padding:0 10px; height:34px;" data-index="${actualIdx}">Edit</button>
        <button class="del-url pill-btn-danger" style="padding:4px 10px; height:34px;" data-index="${actualIdx}">×</button>
      </div>`;
    container.appendChild(item);
  });

  document.querySelectorAll('.open-url').forEach(b => b.onclick = (e) => chrome.tabs.create({url: e.target.dataset.url}));
  document.querySelectorAll('.edit-url').forEach(b => b.onclick = (e) => openUrlEditForm(parseInt(e.target.dataset.index)));
  document.querySelectorAll('.del-url').forEach(b => b.onclick = (e) => {
    if(confirm('Delete link?')) {
      currentUrls.splice(parseInt(e.currentTarget.dataset.index), 1);
      saveUrls(renderUrls);
    }
  });

  renderUrlPagination(totalPages);
}

function renderUrlPagination(totalPages) {
  const pagContainer = document.getElementById('url-pagination');
  pagContainer.innerHTML = '';
  if (totalPages <= 1) return;

  for (let i = 1; i <= totalPages; i++) {
    const btn = document.createElement('button');
    btn.className = `page-btn ${i === urlPage ? 'active' : ''}`;
    btn.innerText = i;
    btn.onclick = () => { urlPage = i; renderUrls(); };
    pagContainer.appendChild(btn);
  }
}

function openUrlEditForm(index) {
  editingUrlIndex = index;
  document.getElementById('url-form').style.display = 'block';
  document.getElementById('url-title-input').value = currentUrls[index].title;
  document.getElementById('url-link-input').value = currentUrls[index].url;
  document.getElementById('btn-save-url').innerText = "Update Link";
}

document.getElementById('btn-add-current-tab').onclick = async () => {
  let [tab] = await chrome.tabs.query({active:true, currentWindow:true});
  currentUrls.unshift({title: tab.title, url: tab.url});
  urlPage = 1;
  saveUrls(renderUrls);
};

document.getElementById('btn-add-url-manual').onclick = () => {
  editingUrlIndex = -1;
  document.getElementById('url-form').style.display = 'block';
  document.getElementById('url-title-input').value = "";
  document.getElementById('url-link-input').value = "";
  document.getElementById('btn-save-url').innerText = "Add Link to List";
};

document.getElementById('btn-save-url').onclick = () => {
  const title = document.getElementById('url-title-input').value;
  const url = document.getElementById('url-link-input').value;
  if(!url) return;

  if(editingUrlIndex === -1) {
    currentUrls.unshift({title: title || 'Link', url});
    urlPage = 1;
  } else {
    currentUrls[editingUrlIndex] = {title: title || 'Link', url};
  }

  saveUrls(() => {
    document.getElementById('url-form').style.display='none';
    renderUrls();
  });
};

document.getElementById('btn-clear-url').onclick = () => {
  document.getElementById('url-title-input').value = "";
  document.getElementById('url-link-input').value = "";
};

document.getElementById('btn-cancel-url').onclick = () => document.getElementById('url-form').style.display = 'none';

document.getElementById('btn-select-all-urls').onclick = () => {
  const cbs = document.querySelectorAll('.url-checkbox');
  const allChecked = Array.from(cbs).every(cb => cb.checked);
  cbs.forEach(cb => cb.checked = !allChecked);
};

document.getElementById('btn-bulk-delete-urls').onclick = () => {
  const sel = Array.from(document.querySelectorAll('.url-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));

  if(sel.length && confirm(`Delete ${sel.length} links?`)) {
    currentUrls = currentUrls.filter((_, i) => !sel.includes(i));
    saveUrls(renderUrls);
  }
};

document.getElementById('btn-bulk-export-urls').onclick = () => {
  const sel = Array.from(document.querySelectorAll('.url-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));
  if(!sel.length) return alert("Select links first");

  let out = "EXPORTED URLS\n\n";
  sel.forEach(idx => {
    out += `${currentUrls[idx].title}\n${currentUrls[idx].url}\n\n`;
  });
  downloadFile("my_links.txt", out);
};

document.getElementById('btn-bulk-export-urls-csv').onclick = () => {
  const sel = Array.from(document.querySelectorAll('.url-checkbox:checked'))
    .map(cb => parseInt(cb.dataset.index));
  if(!sel.length) return alert("Select links first");

  const dataRows = sel.map(idx => [currentUrls[idx].title, currentUrls[idx].url]);
  downloadFile("my_links.csv", convertToCSV(dataRows, ["Title", "URL"]), 'text/csv;charset=utf-8;');
};


// --- TODO ---
function loadTodo() {
  storageGetChunked(SYNC, KEY_TODO, (res) => {
    document.getElementById('todo-input').value = (res && typeof res.text === 'string') ? res.text : "";
  });
}

function saveTodo(text, cb) {
  storageSetChunked(SYNC, KEY_TODO, { text: text || "" }, cb);
}

document.getElementById('save-todo').onclick = () => {
  saveTodo(document.getElementById('todo-input').value, () => alert('Saved'));
};

document.getElementById('btn-cancel-todo').onclick = () => {
  if(confirm('Discard unsaved changes?')) loadTodo();
};

document.getElementById('clear-todo').onclick = () => {
  if(confirm('Clear entire list?')) {
    document.getElementById('todo-input').value = "";
    saveTodo("");
  }
};

document.getElementById('export-todo').onclick = () => {
  downloadFile("tasks.md", document.getElementById('todo-input').value);
};
