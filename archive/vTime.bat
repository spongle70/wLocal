@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

set EXE="%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe"

set TEMPLATE="C:\Scripts\AddPrinters.ps1"

set VSETINFO="C:\Scripts\vSetInfo.bat"
set VSYNCTHING="C:\Scripts\vSyncthing.bat"
set VCLEANAPPS="C:\CleaningScripts\CleanApps.bat"
set VSPEEDUP="C:\NetworkScripts\SpeedUp.bat"
set VLOGON="C:\Scripts\vLogon.bat"
set VADDPRINTERS="C:\Scripts\vAddPrinters.bat"

if "%myname%" EQU "SURGERY1" (
  echo "Fixing time"
  
) else (
  echo " "
)

if "%myname%" EQU "SURGERY2" (
  echo "Fixing time"
  
) else (
  echo " "
)

if "%myname%" EQU "SURGERY3" (
  echo "Fixing time"
  
) else (
  echo " "
)

if "%myname%" EQU "SURGERY4" (
  echo "Fixing time"
  
) else (
  echo " "
)


net stop w32time

w32tm /unregister

@REM w32tm /register
@REM w32tm /config /manualpeerlist:time.windows.com /syncfromflags:MANUAL

@REM net start w32time

@REM w32tm /resync
