@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

ping -n 7 -i 7 192.8.1.1
call %TMESSAGE% '"STARTED local %check_computername% "'


del C:\Packages\Scripts\vOnBoot.bat
