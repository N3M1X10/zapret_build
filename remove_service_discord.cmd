@echo off
chcp 65001 >nul

set SRVNAME=zapret-discord

net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo [92mНажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit /b