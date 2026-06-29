@echo off
echo [1/3] Building frontend...
cd /d "%~dp0frontend"
call npx next build
if errorlevel 1 (
  echo Frontend build failed. Exiting.
  pause
  exit /b 1
)

echo [2/3] Starting backend (serves API + frontend)...
cd /d "%~dp0backend"
start "Second Self - Backend" cmd /k "npx ts-node src/index.ts"

echo [3/3] Launching Electron (waiting for server)...
timeout /t 3 /nobreak > nul
cd /d "%~dp0electron"
npx electron .
