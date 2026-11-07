@echo off
chcp 65001 >nul
title JARVIS Installer
echo =====================================
echo   JARVIS - Windows 10 Setup
echo =====================================
py -3.11 --version >nul 2>&1
if errorlevel 1 (
  echo Python 3.11 پيدا نشد.
  echo لطفا Python 3.11 64-bit را از python.org نصب کن و گزينه Add Python to PATH را فعال کن.
  pause
  exit /b 1
)
py -3.11 -m pip install --upgrade pip
py -3.11 -m pip install -r requirements.txt
if errorlevel 1 (
  echo نصب بعضي وابستگي‌ها ناموفق بود. راهنماي README_FA.txt را ببين.
  pause
  exit /b 1
)
echo نصب تمام شد. براي اجرا run.bat را بزن.
pause
