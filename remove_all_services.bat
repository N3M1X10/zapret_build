@echo off
chcp 65001 >nul

set SRVNAME=zapret

echo.
echo [96mУдаляется служба zapret . . .[33m
echo.
net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo [96mУдаляется служба zapret-discord . . .[33m
echo.
set SRVNAME=zapret-discord

net stop "%SRVNAME%"
sc delete "%SRVNAME%"

echo.
echo [92mНажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
