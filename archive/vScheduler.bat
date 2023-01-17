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

if "%myname%" EQU "SERVER" (
  echo "Fixing schedules"
  schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\zuper" /rp tanzania48!
@REM  schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily10" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\zuper" /rp tanzania48!
  exit
  ) else (
  echo " "
)




echo "Fixing Daily Shutdowns"
schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownDAILY"   /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN 
schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFRI"     /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI
schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

echo "Fixing Daily Syncthing"
@REM schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l
@REM schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily10" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l


if "%myname%" EQU "SURGERY1" (
  echo "Fixing %myname% specific schedules"
  schtasks /change /tn "\vTasks\vShutdownWEEKEND"  /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /disable
  ) else (
  echo " "
)

if "%myname%" EQU "SURGERY2" (
  echo "Fixing %myname% specific schedules"
  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

  ) else (
  echo " "
)

if "%myname%" EQU "SURGERY3" (
  echo "Fixing %myname% specific schedules"
  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

) else (
  echo " "
)

if "%myname%" EQU "SURGERY4" (
  echo "Fixing %myname% specific schedules"
  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

) else (
  echo " "
)

if "%myname%" EQU "RECEPTION1" (
  echo "Fixing %myname% specific schedules"
  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

) else (
  echo " "
)

if "%myname%" EQU "RECEPTION2" (
  echo "Fixing %myname% specific schedules"
  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN

) else (
  echo " "
)


@REM schtasks /delete /tn "\vTasks\vShutdownMon" /F
@REM schtasks /delete /tn "\vTasks\vShutdownFriM" /F

@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable

@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownWEEKEND" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /disable


@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s %myname% /ru "%myname%\%myname%" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable
@REM schtasks /change /tn "\vTasks\vShutdownDAILY"  /s surgery2 /ru "surgery2\zuper" /st 22:00 /rp tanzania48! /disable

schtasks /change /tn "\vTasks\vShutdownDAILY"   /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /disable
schtasks /change /tn "\vTasks\vShutdownWEEKEND" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /disable
