// OptiLock – gameinfo.gi Configurator
// Preserves original file structure exactly; only replaces values of editable cvars.

import { editableCvars, convarsBlockOnly } from './cvars.js';
import { getHeader } from "./header.js";
import * as Logger from './logger.js';

function buildUI(cvarsContainer, filter = '') {
    if (!cvarsContainer) {
        Logger.err("Convars container not found.");
        return;
    }
    cvarsContainer.innerHTML = '';
    let cvarElements = [];

    const lowerFilter = filter.toLowerCase();
    const filtered = editableCvars.filter(c =>
        !lowerFilter || c.key.toLowerCase().includes(lowerFilter) ||
        (c.displayName && c.displayName.toLowerCase().includes(lowerFilter))
    );
    const grouped = {};

    filtered.forEach(c => { if (!grouped[c.category]) grouped[c.category] = []; grouped[c.category].push(c); });

    for (const [cat, items] of Object.entries(grouped)) {
        const section = document.createElement('div');
        section.className = 'category-section';

        const details = document.createElement('details');
        details.open = true;

        const summary = document.createElement('summary');
        summary.textContent = `${cat} (${items.length})`;
        details.appendChild(summary);

        const grid = document.createElement('div');
        grid.className = 'cvars-grid';

        items.forEach(cvar => {
            const div = document.createElement('div');
            div.className = 'cvar-item';

            const label = document.createElement('label');
            label.textContent = cvar.displayName || cvar.key;
            div.appendChild(label);

            let input;
            if (cvar.type === 'bool') {
                input = document.createElement('input');
                input.type = 'checkbox';
                input.checked = (cvar.default === '1' || cvar.default === 'true');
            } else {
                input = document.createElement('input');
                input.type = 'text';
                input.value = cvar.default;
            }

            input.dataset.key = cvar.key;
            div.appendChild(input);
            grid.appendChild(div);
            cvarElements.push({ key: cvar.key, input });
        });

        details.appendChild(grid);
        section.appendChild(details);
        cvarsContainer.appendChild(section);
    }

    let oldValues = {};

    cvarElements.forEach(item => {
        if (item.input.type === 'checkbox') {
            oldValues[item.key] = item.input.checked ? '1' : '0';
        } else {
            oldValues[item.key] = item.input.value.trim();
        }
    });

    return [cvarElements, oldValues];
}

function generateGameInfo(cvarElements, oldValues) {
    // Get current values from UI
    const newValues = {};
    cvarElements.forEach(item => {
        if (item.input.type === 'checkbox') {
            newValues[item.key] = item.input.checked ? '1' : '0';
        } else {
            newValues[item.key] = item.input.value.trim();
        }
    });

    // Replace values in the convars block
    let updatedConvars = convarsBlockOnly;
    for (const [key, val] of Object.entries(newValues)) {
        const regex = new RegExp(`(\\s*"${key}"\\s+)"[^"]*"`, 'g');
        updatedConvars = updatedConvars.replace(regex, `$1"${val}"`);

        if (oldValues[key] != val) {
            Logger.log("Successfully changed " + key + ": " + val)
        }
    }

    // Now build the full file. I'll use a template literal that matches your original file exactly.
    // I've extracted the header and footer from your provided gameinfo.gi.
    // The only part that changes is the ConVars block (between the line "ConVars" and the line that contains the closing brace before "rate").
    // In your original, after the ConVars block (which ends with "r_world_wind_strength" "0"), there is a line with just "    }" (closing ConVars),
    // then a blank line, then "    \"rate\"", etc.

    // To keep it simple, I'll use the exact original file as a string and replace the ConVars block.
    // But since I can't guarantee the exact whitespace, I'll reconstruct it piece by piece.
    return getHeader(updatedConvars);
}

function downloadButtonHandler(infoArray) {
    let cvarElements = infoArray[0];
    let oldValues = infoArray[1];
    const content = generateGameInfo(cvarElements, oldValues);
    const blob = new Blob([content], { type: 'text/plain' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = 'gameinfo.gi';
    link.click();
    URL.revokeObjectURL(link.href);
}

function copyButtonHandler(infoArray) {
    let cvarElements = infoArray[0];
    let oldValues = infoArray[1];
    const content = generateGameInfo(cvarElements, oldValues);
    navigator.clipboard.writeText(content).then(() => alert('gameinfo.gi copied to clipboard!'));
}

document.addEventListener('DOMContentLoaded', () => {

    // ---------- Build UI (categories, search, inputs) ----------
    const cvarsContainer = document.getElementById('cvarsContainer');
    const cvarSearch = document.getElementById('cvarSearch');
    let infoArray = buildUI(cvarsContainer);
    if (cvarSearch) cvarSearch.addEventListener('input', e => buildUI(cvarsContainer, e.target.value));
    Logger.log("UI page successfully built");
    console.log("ui page built");

    // ---------- Generate the final gameinfo.gi using the original template ----------
    // I will construct the full file by taking the original header and footer from your file.
    // To avoid mistakes, I'll embed the entire original file as a template and replace the ConVars block.
    // But that would be huge. Instead, I'll use a function that builds the file step by step.

    // Download and copy buttons
    const downloadBtn = document.getElementById('downloadBtn');
    const copyBtn = document.getElementById('copyBtn');
    if (downloadBtn) { downloadBtn.addEventListener('click', () => downloadButtonHandler(infoArray)); }
    if (copyBtn) { copyBtn.addEventListener('click', () => copyButtonHandler(infoArray)); }
    Logger.log("UI buttons successfully built");
    Logger.log("Opening document");
});