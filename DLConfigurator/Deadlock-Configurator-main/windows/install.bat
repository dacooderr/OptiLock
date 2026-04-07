@echo off
setlocal

echo Checking for Node.js...

node -v >nul 2>&1
if %errorlevel%==0 (
    echo Node.js is already installed.
    goto install_server
)

echo Node.js not found. Installing...

REM Download Node.js LTS installer
set NODE_URL=https://nodejs.org/dist/v20.11.1/node-v20.11.1-x64.msi
set NODE_MSI=%TEMP%\node_installer.msi

powershell -Command "Invoke-WebRequest -Uri %NODE_URL% -OutFile %NODE_MSI%"

echo Running installer...
echo Installer in seperate window, check for installer window
echo Please let node install to Program Files\nodejs
msiexec /i "%NODE_MSI%" /norestart

echo Waiting for installation to finish...
timeout /t 3 >nul

echo Refreshing environment...
set "PATH=C:\Program Files\nodejs;%PATH%"

echo Verifying installation...
node -v >nul 2>&1
if NOT %errorlevel%==0 (
    echo Node install may have failed. Please install manually.
    pause
    exit /b
)

:install_server
echo Installing http-server globally...
npm install -g http-server

echo Done!
pause