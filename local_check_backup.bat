@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

if exist H:\LocalBackups\ (
  echo "Backup disk found"
) else (
  echo "Backup disk NOT found"
  call %TMESSAGE% '"Friday backup disk missing on %check_computername%"'
  )