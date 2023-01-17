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
set VCLEANBACKUP="C:\Scripts\vCleanBackup.bat"
set VTIME="C:\Scripts\vTime.bat"
set VSPEEDUP="C:\NetworkScripts\SpeedUp.bat"

echo "vOnBoot: Start"

@REM if "%myname%" EQU "SURGERY1" (
@REM   echo "vLogon: Wrong machine"
@REM ) else (
@REM   echo "vOnBoot: %myname%: "
@REM   call %VSPEEDUP%
@REM   call %VCLEANBACKUP%
@REM   call %VTIME%
@REM )

  call %VSPEEDUP%
  call %VCLEANBACKUP%
  call %VTIME%

echo "vOnBoot: Finished"