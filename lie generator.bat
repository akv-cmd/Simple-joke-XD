@echo off
chcp 1251 >nul
title ГЕНЕРАТОР ОТГОВОРОК v1.0
color 0E
echo.
echo =====================================================
echo          ГЕНЕРАТОР ОТГОВОРОК
echo =====================================================
echo.
setlocal enabledelayedexpansion

set "excuses[1]=Мой кот случайно удалил файл."
set "excuses[2]=Интернет пропал в самый неподходящий момент."
set "excuses[3]=Я думал, это нужно сделать завтра."
set "excuses[4]=Компьютер перезагрузился во время работы."
set "excuses[5]=Я забыл пароль от облака."

set /a num=%random% %% 5 + 1
echo ВАША ОТГОВОРКА НА СЕГОДНЯ:
echo.
echo !excuses[%num%]!
echo.
pause
