@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

set PSFILE="%LOCAL%\PS\pLastBoot.ps1"
if exist %PSFILE% (
   echo "Running %PSFILE%"
   Powershell.exe -ExecutionPolicy Bypass -File %PSFILE%
)
