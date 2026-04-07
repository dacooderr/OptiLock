export function log(msg) {
    console.log(msg);
    logToServer('INFO', msg);
}

export function err(msg) {
    console.error(msg);
    errToServer('ERROR', msg);
}

function logToServer(level, message) {
    fetch('/log', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ message: `[${level}] ${message}` })
    }).catch(() => {});
}

function errToServer(level, message) {
    fetch('/err', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ message: `[${level}] ${message}` })
    }).catch(() => {});
}