@echo off
call C:\Scripts\wLocal\localENV.bat
@REM xxxxxxx
echo "%~n0: Start"

set PRINTERPS="%LOCAL%\PS\pAddPrinters.ps1"
set BROTHERPS="%LOCAL%\PS\pAddNetBrother.ps1"
set ZEBRAPS="%LOCAL%\PS\pAddNetZebra.ps1"
set EXE="Powershell.exe"

@REM set variables to ensure they are set,
@REM printer 0 - no install
@REM printer 1 - install brother
@REM printer 2 - install zebra
@REM printer 3 - install both

set ZUPER=0
set PRINTER=0

if "%USERNAME%" == "zuper" (
    echo "Found user %USERNAME%"
	echo "Not setting up printer for %USERNAME%"
    set ZUPER=1
    )
    
if "%check_computername%" EQU "SURGERY1" (
    set PRINTER=3
)

if "%check_computername%" EQU "SURGERY2" (
    set PRINTER=3
)

if "%check_computername%" EQU "SURGERY3" (
    set PRINTER=3
)

if "%check_computername%" EQU "SURGERY4" (
    set PRINTER=3
)

if "%check_computername%" EQU "RECEPTION1" (
    set PRINTER=2
)

if "%check_computername%" EQU "RECEPTION2" (
    set PRINTER=1
)

if "%check_computername%" EQU "RECEPTION3" (
    set PRINTER=1
)

if "%check_computername%" EQU "RECEPTION4" (
    set PRINTER=1
)

if [%ZUPER%] == [1] (
    echo "Not installing printers"
) else (
        if [%PRINTER%] == [1] (
            echo "Installing Brother"
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
        )
        if [%PRINTER%] == [2] (
            echo "Installing Zebra"
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
        )
        if [%PRINTER%] == [3] (
            echo "Installing Brother and Zebra"
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
        )
    )
