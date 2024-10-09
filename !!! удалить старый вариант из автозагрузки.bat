@echo off

reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\ /v "zapret-master" /f

exit /b