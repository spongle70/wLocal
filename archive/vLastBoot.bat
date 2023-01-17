@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

set EXE="%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe"

set TEMPLATE="C:\Scripts\AddPrinters.ps1"

set VSETINFO="C:\Scripts\vSetInfo.bat"
set VSYNCTHING="C:\Scripts\vSyncthing.bat"
set VCLEANAPPS="C:\Scripts\CleaningScripts\CleanApps.bat"
set VSPEEDUP="C:\Scripts\NetworkScripts\SpeedUp.bat"
set VLOGON="C:\Scripts\vLogon.bat"

set LASTBOOTPS="C:\Scripts\LastBoot.ps1"

echo "vLastBoot: Start"

%EXE% -ExecutionPolicy Bypass -File %LASTBOOTPS%

echo "vLastBoot: Finished"
