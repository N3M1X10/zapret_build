@echo off
::File saved in 866 encoding

:: Наличие прав администратора
echo.
echo Данный файл должен быть запущен с правами администратора (ПКМ ^> Запустить от имени администратора).
echo Если вы уверены, нажмите любую клавишу, чтобы продолжить удаление служб
echo.
pause
cls

echo Windivert deleting . . .

sc stop windivert
sc delete windivert

net stop "WinDivert"
net delete "WinDivert"

net stop "WinDivert14"
net delete "WinDivert14"

echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
