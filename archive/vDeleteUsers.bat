@echo off
set myname=%COMPUTERNAME%
echo "Found computer %myname%"

set EXE="%SYSTEMROOT%\system32\WindowsPowerShell\v1.0\powershell.exe"

set TEMPLATE="C:\Packages\Scripts\AddPrinters.ps1"

set VSETINFO="C:\Scripts\vSetInfo.bat"
set VSYNCTHING="C:\Scripts\vSyncthing.bat"
set VCLEANAPPS="C:\CleaningScripts\CleanApps.bat"
set VSPEEDUP="C:\NetworkScripts\SpeedUp.bat"
set VLOGON="C:\Scripts\vLogon.bat"
set VADDPRINTERS="C:\Scripts\vAddPrinters.bat"

if "%myname%" EQU "SURGERY1" (
  echo "Deleting accounts"
  net user surgery /delete
::  net user surgery1 /delete
  net user surgery2 /delete
  net user surgery3 /delete
  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
  net user Reception1 /delete
  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)

if "%myname%" EQU "SURGERY2" (
  echo "Deleting accounts"
  net user surgery /delete
  net user surgery1 /delete
::  net user surgery2 /delete
  net user surgery3 /delete
  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
  net user Reception1 /delete
  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)


if "%myname%" EQU "SURGERY3" (
  echo "Deleting accounts"
  net user surgery /delete
  net user surgery1 /delete
  net user surgery2 /delete
::  net user surgery3 /delete
  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
  net user Reception1 /delete
  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)


if "%myname%" EQU "SURGERY4" (
  echo "Deleting accounts"
  net user surgery /delete
  net user surgery1 /delete
  net user surgery2 /delete
  net user surgery3 /delete
::  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
  net user Reception1 /delete
  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)

if "%myname%" EQU "RECEPTION1" (
  echo "Deleting accounts"
  net user surgery /delete
::  net user surgery1 /delete
::  net user surgery2 /delete
::  net user surgery3 /delete
::  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
::  net user Reception1 /delete
::  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)


if "%myname%" EQU "RECEPTION2" (
  echo "Deleting accounts"
  net user surgery /delete
::  net user surgery1 /delete
::  net user surgery2 /delete
::  net user surgery3 /delete
::  net user surgery4 /delete
  net user surgery5 /delete
  net user surgery6 /delete
  net user surgery7 /delete
  net user surgery8 /delete
  net user surgery9 /delete
  net user surgery10 /delete

  net user Hygienist /delete
  net user Hygienist1 /delete
  net user Hygienist2 /delete
  net user Hygienist3 /delete
  net user Hygienist4 /delete

  net user Reception /delete
::  net user Reception1 /delete
::  net user Reception2 /delete
  net user Reception3 /delete
  net user Reception4 /delete

  net user Office /delete
  net user Office1 /delete
  net user Office2 /delete
  net user Office3 /delete
  net user Office4 /delete

  net user opg /delete
  net user microminder /delete
::  net user server /delete
  net user xray /delete
) else (
  echo " "
)
