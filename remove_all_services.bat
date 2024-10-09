@echo off
chcp 65001 >nul

set SRVNAME=zapret

echo.
echo Удаляется служба zapret . . .
echo.
net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo Удаляется служба zapret-discord . . .
echo.
set SRVNAME=zapret-discord

sc stop windivert
net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
