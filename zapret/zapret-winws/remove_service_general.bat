@echo off

set SRVCNAME=zapret

net stop "%SRVCNAME%"
sc delete "%SRVCNAME%"

pause
exit
