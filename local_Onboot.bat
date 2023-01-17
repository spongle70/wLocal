@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

call %TMESSAGE% '"STARTED local %check_computername% "'


del C:\Packages\Scripts\vOnBoot.bat
