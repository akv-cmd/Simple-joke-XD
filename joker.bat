@echo off
chcp 65001 >nul
title СИСТЕМНЫЙ ШУТНИК
color 0A
cls

echo =====================================================
echo          СИСТЕМНЫЙ ШУТНИК АКТИВИРОВАН!
echo =====================================================
echo.
echo ПРОВОДИТСЯ ТЕСТИРОВАНИЕ СИСТЕМЫ...
timeout /t 2 /nobreak >nul

:: Проверка дискового пространства
echo.
echo [ТЕСТ: ДИСКОВОЕ ПРОСТРАНСТВО]
wmic logicaldisk get caption,freespace | find ":"
timeout /t 3 /nobreak >nul


:: Забавное сообщение
echo.
echo Система стабильна, но скучает без шуток!
echo Запускаем дозу веселья...
timeout /t 2 /nobreak >nul

:: Проверяем, открыт ли Microsoft Edge
tasklist | find /i "msedge.exe" >nul
if %errorlevel% == 0 (
    echo Microsoft Edge уже открыт. Открываю рикролл в новой вкладке...
    start "" "https://rutube.ru/video/f3b615db135287a64584737e664e1e4b/"
) else (
    echo Microsoft Edge не открыт. Запускаю браузер...
    start msedge "https://rutube.ru/video/f3b615db135287a64584737e664e1e4b/"
)

echo.
echo Рикролл запущен в браузере!
echo Не забудьте улыбнуться!
echo.
pause
