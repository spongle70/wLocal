@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

set EXE="%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe"

set TEMPLATE="C:\Scripts\AddPrinters.ps1"

set VSETINFO="C:\Scripts\vSetInfo.bat"
set VSYNCTHING="C:\Scripts\vSyncthing.bat"
set VCLEANAPPS="C:\CleaningScripts\CleanApps.bat"
set VSPEEDUP="C:\NetworkScripts\SpeedUp.bat"
set VADDPRINTERS="C:\Scripts\vAddPrinters.bat"

@REM if "%myname%" EQU "SURGERY1" (
@REM   echo "Fixing schedules"
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownMon"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN /f

@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI /f
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT /f
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SUN /f

@REM   schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily"  /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l /f
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY2" (
@REM   echo "Fixing schedules"
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownMon"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN /f

@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI /f

@REM   schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily"  /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l /f
@REM   ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY3" (
@REM   echo "Fixing schedules"
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownMon"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN /f

@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI /f

@REM   schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily"  /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l /f
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "SURGERY4" (
@REM   echo "Fixing schedules"
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownDAILY"   /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN 

@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFRI"     /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI /f
@REM #  schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownWEEKEND" /F /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 15:00 /rp tanzania48! /D SAT,SUN /f

@REM   schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l 
@REM ) else (
@REM   echo " "
@REM )

@REM if "%myname%" EQU "RECEPTION1" (
@REM   echo "Fixing schedules"
@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownMon"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 22:00 /rp tanzania48! /D MON,TUE,WED,FRI,SAT,SUN

@REM   schtasks /create /sc WEEKLY /tn "\vTasks\vShutdownFriM"  /tr "c:\Windows\System32\shutdown.exe /s /t 1" /s %myname% /ru "%myname%\zuper" /st 06:00 /rp tanzania48! /D FRI

@REM   schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily"  /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\%myname%" /rp Dent1l
@REM ) else (
@REM   echo " "
@REM )

if "%myname%" EQU "SERVER" (
  echo "Fixing schedules"
  schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\zuper" /rp tanzania48!
  schtasks /create /SC ONSTART /tn "\vHighfield\SyncthingDaily10" /F /tr "c:\Packages\Scripts\vSyncthing.bat" /s %myname% /ru "%myname%\zuper" /rp tanzania48!
  ) else (
  echo " "
)
