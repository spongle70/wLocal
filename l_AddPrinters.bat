@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

set PRINTERPS="%LOCAL%\PS\pAddPrinters.ps1"
set BROTHERPS="%LOCAL%\PS\pAddNetBrother.ps1"
set ZEBRAPS="%LOCAL%\PS\pAddNetZebra.ps1"
set EXE="Powershell.exe"

if "%USERNAME%" == "zuper" (
	echo "Not setting up printer for %USERNAME%"
    exit
    )
    
if "%check_computername%" EQU "SURGERY1" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "SURGERY2" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "SURGERY3" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "SURGERY4" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "RECEPTION1" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "RECEPTION2" (
    echo "echo "Installing printers""
    @REM %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "RECEPTION3" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)

if "%check_computername%" EQU "RECEPTION4" (
    echo "echo "Installing printers""
    %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
    @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
)
