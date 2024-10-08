@echo off
chcp 65001

reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v "zapret-master" /f

echo.
echo [92mУдаление из автозагрузки завершено[96m

>nul timeout /t 2
exit /b