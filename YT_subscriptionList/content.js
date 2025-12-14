(function() {
    // --- EXTRACT DATA ---
    const channels = document.querySelectorAll('ytd-channel-renderer');
    
    if (channels.length === 0) {
        alert("No channels found. Please make sure the page is loaded.");
        return;
    }

    let results = [];

    channels.forEach(channel => {
        try {
            // 1. Get Name
            const nameEl = channel.querySelector('#channel-title #text');
            const name = nameEl ? nameEl.innerText.trim() : "N/A";

            // 2. Get Handle (@ID)
            let handle = "N/A";
            const metaBlock = channel.querySelector('#metadata');
            if (metaBlock) {
                const allSpans = metaBlock.querySelectorAll('span, yt-formatted-string');
                for (let span of allSpans) {
                    if (span.innerText.trim().startsWith('@')) {
                        handle = span.innerText.trim();
                        break;
                    }
                }
            }

            // 3. Get Description (Intro)
            const descEl = channel.querySelector('#description');
            const desc = descEl ? descEl.innerText.replace(/(\r\n|\n|\r)/gm, " ").trim() : "No description";

            results.push({
                name: name,
                id: handle,
                intro: desc
            });

        } catch (err) {
            console.error("Error parsing row", err);
        }
    });

    // Send data back to popup
    chrome.runtime.sendMessage({
        action: "dataScraped",
        data: results
    });

})();