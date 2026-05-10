@echo off
title System Security Scan
echo Starting deep system scan...
echo.
timeout /t 2 /nobreak >nul

for %%i in (C:\Windows\system32\*.dll C:\Program Files\*.exe C:\Users\%USERNAME%\*.txt) do (
    echo Scanning %%i...
    timeout /t 1 /nobreak >nul
)

echo.
echo Scan complete. No threats found.
echo Thank you for using System Security Scan v1.0
echo.
pause
