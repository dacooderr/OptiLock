@echo off
setlocal

echo Starting local server on http://localhost:6767

REM Change directory to script location
cd /d %~dp0

REM Start server in background
start cmd /k "node server.js"

REM Wait a moment for server to start
timeout /t 2 >nul

REM Open browser
start http://localhost:6767

exit