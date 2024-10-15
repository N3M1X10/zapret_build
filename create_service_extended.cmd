@echo off
::All files saved in 866

:: Проверка пути
set scriptPath=%~dp0
set "path_no_spaces=%scriptPath: =%"
if not "%scriptPath%"=="%path_no_spaces%" (
    echo Путь содержит пробелы. 
    echo Пожалуйста, переместите скрипт в папку без пробелов.
    >nul pause
    exit /b
)


:: Наличие прав администратора
echo.
echo Данный файл должен быть запущен с правами администратора (ПКМ -^> Запустить от имени администратора).
echo Если вы уверены, нажмите любую клавишу, чтобы продолжить создание службы
echo.
pause


set BIN=%~dp0zapret\zapret-winws\
set ARGS=--wf-tcp=80,443 --wf-udp=443,50000-65535 ^
--filter-udp=443 --hostlist="%BIN%list-extended.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-udplen-increment=10 --dpi-desync-udplen-pattern=0xDEADBEEF --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-udp=50000-65535 --dpi-desync=fake --dpi-desync-any-protocol --dpi-desync-cutoff=d3 --dpi-desync-repeats=6 --dpi-desync-fake-quic="%BIN%quic_initial_www_google_com.bin" --new ^
--filter-tcp=80 --hostlist="%BIN%list-extended.txt" --dpi-desync=fake,split2 --dpi-desync-autottl=2 --dpi-desync-fooling=md5sig --new ^
--filter-tcp=443 --hostlist="%BIN%list-extended.txt" --dpi-desync=fake,split --dpi-desync-autottl=2 --dpi-desync-repeats=6 --dpi-desync-fooling=badseq --dpi-desync-fake-tls="%BIN%tls_clienthello_www_google_com.bin"

set SRVNAME=zapret

net stop "%SRVNAME%"
sc delete "%SRVNAME%"
sc create "%SRVNAME%" binPath="\"%BIN%winws.exe\" %ARGS%" DisplayName="zapret DPI bypass: Extended" start=auto
sc description "%SRVNAME%" "zapret DPI bypass software"
sc start "%SRVNAME%"


echo.
echo Нажмите любую кнопку чтобы закрыть окно . . . & >nul pause & exit
