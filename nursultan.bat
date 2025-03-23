@echo off
title MODERI_SINI_SHALAV_PROMO_MIQYZ
setlocal enabledelayedexpansion
color 0D
:: Воспроизведение музыки
start moderator.mp3

:: Список изображений
set "images[0]=nur.jpg"
set "images[1]=pe.jpg"
set "images[2]=na.jpg"

:: Количество изображений
set "count=3"

:: Бесконечный вывод текста и смена обоев
:loop
:: Генерация случайного индекса
set /a "index=%random% %% %count%"

:: Получение имени файла по индексу
set "wallpaper=!images[%index%]!"

:: Установка обоев
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%cd%\%wallpaper%" /f
rundll32.exe user32.dll,UpdatePerUserSystemParameters

:: Вывод текста
echo NURSULTAN.FUN-PROMO-MIQYZ-MODERI_PIDORI

:: Пауза на 1 секунду
timeout /t 1 /nobreak >nul

goto loop