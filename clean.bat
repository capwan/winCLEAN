@echo off
%~d0
CD %~dp0

echo.
echo temp...
start /wait scripts\temp.bat

echo.
echo prefetch...
start /wait scripts\prefetch.bat

echo.
echo Cleaning....
Powershell.exe -executionpolicy unrestricted -File Powershellscripts\Cleaning1.ps1

pause
