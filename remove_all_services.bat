@echo off


echo Windivert stopping . . .
sc stop windivert


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

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo Удаляется служба zapret-discord-mgts . . .
echo.
set SRVNAME=zapret-discord-mgts

net stop "%SRVNAME%"
sc delete "%SRVNAME%"


echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
