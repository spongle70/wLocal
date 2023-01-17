@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

call C:\Scripts\Base\tmessage.bat '"%myname% backup starting"'
"C:\Program Files (x86)\Software of Excellence\EXACT\backup.exe"
date /t > c:\finished.txt
call C:\Scripts\Base\tmessage.bat '"FINISHED %myname% backup "'
