const http = require('http');
const fs = require('fs');
const path = require('path');
const url = require('url');

const PORT = 6767;
const ROOT = __dirname;
const LOGS_DIR = path.join(ROOT, 'logs');

if (!fs.existsSync(LOGS_DIR)) {
    fs.mkdirSync(LOGS_DIR, { recursive: true });
}

// Get log file based on current date
function getLogFile() {
    const date = new Date().toISOString().slice(0, 10); // YYYY-MM-DD
    return path.join(LOGS_DIR, `${date}.log`);
}

function getContentType(filePath) {
    const ext = path.extname(filePath).toLowerCase();
    switch (ext) {
        case '.html': return 'text/html; charset=utf-8';
        case '.js': return 'application/javascript; charset=utf-8';
        case '.css': return 'text/css; charset=utf-8';
        case '.json': return 'application/json; charset=utf-8';
        case '.txt': return 'text/plain; charset=utf-8';
        default: return 'application/octet-stream';
    }
}

function serveFile(filePath, res) {
    fs.readFile(filePath, (err, data) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/plain; charset=utf-8' });
            res.end('Not found');
            return;
        }

        res.writeHead(200, { 'Content-Type': getContentType(filePath) });
        res.end(data);
    });
}

function postLog(data, pathname, req, res) {
    let infoStamp = 'INFO'
    if (pathname === "/err") {
        infoStamp = 'ERROR'
    }

    const message = String(data.message || '');

    const timestamp = new Date().toISOString();
    const line = `[${infoStamp}] [${timestamp}] ${message}\n`;

    const logFile = getLogFile();

    fs.appendFile(logFile, line, err => {
        if (err) {
            res.writeHead(500, { 'Content-Type': 'text/plain' });
            res.end('Failed to write log');
            return;
        }

        res.writeHead(200);
        res.end('OK');
    });
}

const server = http.createServer((req, res) => {
    const parsedUrl = url.parse(req.url, true);
    const pathname = parsedUrl.pathname;

    // LOG ENDPOINT
    if (req.method === 'POST' && (pathname === '/log' || pathname === '/err')) {
        let body = '';

        req.on('data', chunk => {
            body += chunk;
            if (body.length > 1e6) req.socket.destroy();
        });

        req.on('end', () => {
            try {
                postLog(JSON.parse(body || '{}'), pathname, req, res)
            } catch (err) {
                res.writeHead(400);
                res.end('Invalid JSON');
            }
        });

        return;
    }

    let filePath = path.join(ROOT, pathname === '/' ? 'index.html' : pathname);

    if (!filePath.startsWith(ROOT)) {
        res.writeHead(403);
        res.end('Forbidden');
        return;
    }

    serveFile(filePath, res);
});

server.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});