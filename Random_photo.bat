@echo off
chcp 65001 >nul
title СЛУЧАЙНАЯ ASCII‑КАРТИНКА
color 0A

:: Отключаем мерцание
cls

:start
echo.
echo =====================================================
echo          СЛУЧАЙНАЯ ASCII‑КАРТИНКА
echo =====================================================
echo.

:: Генерируем случайное число от 1 до 4
set /a choice=%random% %% 4 + 1

:: Выбираем картинку по случайному числу
if %choice%==1 call :draw_robot
if %choice%==2 call :draw_flower
if %choice%==3 call :draw_rocket
if %choice%==4 call :draw_cat

echo.
echo ----------------------------------------------------
echo.
echo Для новой картинки нажмите любую клавишу...
echo Для выхода закройте окно.
pause >nul
cls
goto start

:: Пресет №1: Робот
:draw_robot
echo    *****
echo   * o o *
echo  *   ^<   *
echo  *  ---  *
echo   *****
echo     | |
echo    /   \
goto :eof

:: Пресет №2: Цветок
:draw_flower
echo      _
echo    /_\_
echo   /     \
echo  |  o  |
echo   \___/
goto :eof

:: Пресет №3: Ракета
:draw_rocket
echo     /\
echo    /  \
echo   /____\
echo     \/
echo     ||
echo     ||
goto :eof

:: Пресет №4: Кот
:draw_cat
echo    (\_/)
echo    (•_•)
echo    >^<
goto :eof
