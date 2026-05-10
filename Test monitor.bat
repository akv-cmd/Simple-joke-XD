@echo off
title Monitor Test Utility
echo Running display diagnostic...
timeout /t 2 /nobreak >nul

:colors
for %%c in (0 1 2 3 4 5 6 7 8 9 A B C D E F) do (
    color %%c0
    echo Testing color scheme %%c...
    timeout /t 1 /nobreak >nul
)
goto colors
