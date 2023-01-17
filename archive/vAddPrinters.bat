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

set PRINTERPS="C:\Scripts\AddPrinters.ps1"
set BROTHERPS="C:\Scripts\AddNetBrother.ps1"
set ZEBRAPS="C:\Scripts\AddNetZebra.ps1"

echo "vAddPrinters: Start"

if "%USERNAME%" == "zuper" (
	echo "Not setting up printer for this %USERNAME%"
    ) else (
            if "%myname%" EQU "SURGERY1" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "SURGERY2" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "SURGERY3" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "SURGERY4" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "RECEPTION1" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "RECEPTION2" (
            echo "echo "Installing printers""
            @REM %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )

            if "%myname%" EQU "RECEPTION3" (
            echo "echo "Installing printers""
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
            ) else (
            echo " "
            )
        ) 
