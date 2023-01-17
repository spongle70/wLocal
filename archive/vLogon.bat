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

echo "vLogon: Start"

@REM if "%myname%" EQU "SURGERY1" (
@REM   echo "vLogon: Printer setup %VADDPRINTERS%"
@REM   call %VADDPRINTERS%
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY2" (
@REM   echo "vLogon: Printer setup %VADDPRINTERS%"
@REM   call %VADDPRINTERS%
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY3" (
@REM   echo "vLogon: Printer setup %VADDPRINTERS%"
@REM   call %VADDPRINTERS%
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY4" (
@REM   echo "vLogon: Printer setup %VADDPRINTERS%"
@REM   call %VADDPRINTERS%
@REM ) else (
@REM   echo " "
@REM )

  call %VADDPRINTERS%

@REM call "C:\Packages\Scripts\ShowSeconds.reg"

  call "C:\Packages\Scripts\vTime.bat"

@REM echo "vLogon: Syncing the PC time"
@REM net time \\SERVER /set /yes

echo "vLogon: Finished"