@echo off
title System Error
echo.
echo Critical system error detected!
echo Error code: 0xDEADBEEF
echo Memory corruption in sector 0xFFFF
echo.
echo Press any key to attempt repair...
pause >nul
echo.
echo Repair failed. Rebooting system...
timeout /t 3 /nobreak >nul
echo Shutting down...
timeout /t 2 /nobreak >nul
exit
