@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "START: %~n0"

FOR %%x IN (%LOCAL%\l_*.bat) DO (
    echo "%%x"
    call "%%x"
)

FOR %%x IN (C:\Scripts\lSecrets\l_*.bat) DO (
    echo "%%x"
    call "%%x"
)

powershell -ExecutionPolicy Bypass -File \Scripts\wLocal\ShowSeconds.ps1

echo "FINISHED: %~n0"