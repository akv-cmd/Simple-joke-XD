@echo off
title Software Update - 98% Complete
echo.
echo Installing update KB9999999...
echo Do not turn off your computer.
echo.

:loop
for /l %%i in (98,0,98) do (
    echo Progress: %%i%%
    timeout /t 1 /nobreak >nul
)
goto loop
