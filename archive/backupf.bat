@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

@REM set DUFUS="1816161258:AAGNRS1t_ApXwAm0jJyms5H6H7BaJFPvyok"
@REM set TCHATID="1462463122"
@REM set MSG=backup failed
@REM set STRING='%myname% %MSG%'
@REM curl -X POST -H 'content-type: application/json'  -F "chat_id=%TCHATID%" -F "text=%STRING%"  https://api.telegram.org/bot%DUFUS%/sendmessage
call C:\Scripts\Base\tmessage.bat '"%myname% backup FAILED"'
