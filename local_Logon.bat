@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

FOR %%x IN (%LOCAL%\l_*.bat) DO (
    echo "%%x"
    call "%%x"
)
