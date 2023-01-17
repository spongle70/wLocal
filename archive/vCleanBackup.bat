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

if "%myname%" EQU "SURGERY1" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)

if "%myname%" EQU "SURGERY2" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
    copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)


if "%myname%" EQU "SURGERY3" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)


if "%myname%" EQU "SURGERY4" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)

if "%myname%" EQU "RECEPTION1" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)


if "%myname%" EQU "RECEPTION2" (
  echo "Cleaning c:\databkup"
  cd c:\DataBkup\
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)

if "%myname%" EQU "SERVER" (
  echo "Cleaning D:\Exactwin"
  cd D:\Exactwin
  copy C:\Packages\Scripts\stignore c:\DataBkup\.stignore
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S thumbs.db ') Do del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do @echo del "%%F"
  for /f "delims=" %%F in ('Dir /B /S ~*.RTF ') Do del "%%F"
) else (
  echo " "
)