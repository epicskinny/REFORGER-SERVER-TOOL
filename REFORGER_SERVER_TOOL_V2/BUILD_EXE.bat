@echo off
setlocal
cd /d "%~dp0"
title Build REFORGER SERVER TOOL

where py >nul 2>nul
if errorlevel 1 (
  echo Python is not installed or is not on PATH.
  echo Install Python 3.11 or newer and enable Add Python to PATH.
  pause
  exit /b 1
)

py -m pip install --upgrade pip
py -m pip install -r requirements.txt
if errorlevel 1 goto error

py -m PyInstaller --noconfirm --clean --onefile --windowed ^
  --name "REFORGER SERVER TOOL V2" ^
  --icon "assets\reforger_server_tool.ico" ^
  --add-data "assets;assets" ^
  --collect-all PySide6 ^
  reforger_server_tool.py
if errorlevel 1 goto error

echo.
echo Finished:
echo dist\REFORGER SERVER TOOL.exe
pause
exit /b 0

:error
echo Build failed.
pause
exit /b 1
