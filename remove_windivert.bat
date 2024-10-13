@echo off


echo Windivert deleting . . .

sc stop windivert
sc delete windivert

net stop "WinDivert"
net delete "WinDivert"

net stop "WinDivert14"
net delete "WinDivert14"

echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
