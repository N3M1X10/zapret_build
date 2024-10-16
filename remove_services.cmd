@echo off
::File saved in 866 encoding

:: Наличие прав администратора
echo.
echo Данный файл должен быть запущен с правами администратора (ПКМ ^> Запустить от имени администратора).
echo Если вы уверены, нажмите любую клавишу, чтобы продолжить удаление служб
echo.
pause
cls

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
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
