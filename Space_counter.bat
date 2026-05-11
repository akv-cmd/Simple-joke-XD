@echo off
chcp 65001 >nul
title КОСМИЧЕСКИЙ СТАРТ
color 0A
cls

echo.
echo =====================================================
echo        КОСМИЧЕСКИЙ КОРАБЛЬ: ГОТОВ К СТАРТУ
echo =====================================================
echo.

:: Инициализация систем с анимацией
echo Инициализация систем...
for /l %%a in (1,1,3) do (
    echo Загрузка модуля %%a... ОК!
    timeout /t 0.5 /nobreak >nul
)
timeout /t 1 /nobreak >nul

:: Предстартовый контроль
echo.
echo ПРЕДСТАРТОВЫЙ КОНТРОЛЬ:
echo [ТОПЛИВО].......... ЗАПРАВЛЕНО
echo [СИСТЕМЫ]......... ПРОВЕРЕНЫ
echo [ЭКИПАЖ].......... НА БОРТУ
echo [СВЯЗЬ]........... УСТАНОВЛЕНА
timeout /t 2 /nobreak >nul

echo.
echo ЗАПУСК ДВИГАТЕЛЕЙ...
timeout /t 1 /nobreak >nul
echo РРРРРР! (звук двигателей)
timeout /t 1 /nobreak >nul

:: Обратный отсчёт с звуковыми сигналами
echo.
echo ОБРАТНЫЙ ОТСЧЁТ:
for /l %%i in (10,-1,1) do (
    if %%i leq 3 (
        echo ДО СТАРТА: %%i... ВНИМАНИЕ!
        rundll32 user32.MessageBeep 48
    ) else (
        echo ДО СТАРТА: %%i
        rundll32 user32.MessageBeep
    )
    timeout /t 1 /nobreak >nul
)

:: Финальный отсчёт и старт
echo.
echo СТАРТ!
echo.
echo    /\
echo   /  \
echo  /____\
echo    ||
timeout /t 0.5 /nobreak >nul
echo    ||  → ВЗЛЁТ!
timeout /t 1.5 /nobreak >nul

:: Анимация подъёма
echo.
echo КОРАБЛЬ ПОДНИМАЕТСЯ В НЕБО...
for /l %%h in (1,1,3) do (
    echo Высота: %%h000 м
    timeout /t 0.7 /nobreak >nul
)

echo.
echo ВЫХОД НА ОРБИТУ... 100 %
echo.
echo КОРАБЛЬ УШЕЛ В КОСМОС!
echo МИССИЯ УСПЕШНА!
echo.
pause
