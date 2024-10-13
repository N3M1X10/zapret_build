@echo off


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


echo Windivert stopping . . .

sc stop windivert
net stop "WinDivert"
net stop "WinDivert14"

echo Windivert stopping . . .
sc stop windivert

echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
