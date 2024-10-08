@echo off
chcp 65001

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f /v "zapret-master" /d "%~dp0zapret\zapret-winws\preset_russia+discord.cmd"

echo.
echo [92mДобавление в автозагрузку завершено[96m

>nul timeout /t 2
exit /b