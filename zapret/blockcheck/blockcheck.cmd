@echo off

cd /d "%~dp0"
FOR /F "tokens=* USEBACKQ" %%F IN (`%~dp0\cygwin\bin\cygpath -C OEM -a -m zapret\blog.sh`) DO (
SET P='%%F'
)

wscript %~dp0\tools\elevator.vbs %~dp0\cygwin\bin\bash -i "%P%"
