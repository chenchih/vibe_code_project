# Jira to AI Exporter 🚀

## 😫 The Pain Point
I often need to copy Jira ticket content into an LLM to help analyze the summary or debug issues. However, the main pain point is having to manually copy and paste each section (Description, Steps, Results) separately to avoid the UI clutter.

**Jira Exporter** It is a Chrome Extension designed for Developers, QA Engineers, and Product Managers that automatically removes UI clutter and formats the ticket into a clean plain text. This allow manually copying Jira tickets into AI tools (ChatGPT, Claude, etc.) to do summarize the ticket. 

---

## ✨ Key Features

### 🛡️ Privacy First
*   **Auto-Redaction:** Automatically detects user mentions (e.g., `@JohnDoe`) and avatars, replacing them with `[User Redacted]`.
*   **Local Processing:** All data extraction happens entirely within your browser. No data is sent to external servers.

### 🧹 Smart Cleaning
*   **Clutter Removal:** Strips out "Show/Hide" buttons, icon text, and excessive whitespace.
*   **Compact Formatting:** Converts messy, spaced-out descriptions into clean, single-spaced text blocks optimized for LLM token usage.

### 📊 Multiple Export Formats
1.  **Clipboard:** One-click copy for instant pasting.
2.  **TXT Export:** Save a clean, readable text file backup.
3.  **CSV Export:** Vertical Key-Value format compatible with Excel.

### 🔍 Deep Extraction
Automatically captures the fields that matter most for debugging and analysis:
*   Project Name & Ticket ID
*   Title & Description
*   **Steps to Reproduce**
*   **Actual Results**
*   **Expected Results**
*   **Firmware Version**

---

## 🛠 Installation

1.  Clone this repository or download the source code folder.
2.  Open Chrome and navigate to `chrome://extensions`.
3.  Enable **Developer mode** (toggle in the top-right corner).
4.  Click **Load unpacked**.
5.  Select the folder containing the extension files.

---

## 📖 How to Use

1.  Navigate to any Jira ticket (Cloud or Server).
2.  Click the **Jira Exporter** icon in your Chrome toolbar.
3.  Select your desired action:
    *   **Copy to Clipboard:** Best for quick AI prompting.
    *   **Download .txt:** Best for documentation or offline notes.
    *   **Download .csv:** Best for spreadsheet analysis.

---

## 🔒 Permissions Explained

*   `activeTab`: Required to read the content of the Jira page you are currently viewing.
*   `scripting`: Required to safely execute the cleaning algorithms on the page content.

---

## 📝 License

Distributed under the MIT License. See `LICENSE` for more information.

---