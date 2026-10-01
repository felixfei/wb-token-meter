@echo off
rem wb-token-meter launcher: run the built app from this repo (out/ must exist)
cd /d "%~dp0"
if not exist "out\main\index.js" (
  echo [!] out\main\index.js not found. Build first:
  echo     node node_modules\electron-vite\bin\electron-vite.js build
  pause
  exit /b 1
)
if not exist "node_modules\electron\dist\electron.exe" (
  echo [!] electron.exe not found. Run first:
  echo     node node_modules\electron\install.js
  pause
  exit /b 1
)
start "" "%~dp0node_modules\electron\dist\electron.exe" .
