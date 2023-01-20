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
	echo "Not setting up printer for %USERNAME%"
    set ZUPER=1
    )
    
@REM if "%check_computername%" EQU "SURGERY1" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "SURGERY2" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "SURGERY3" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "SURGERY4" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "RECEPTION1" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "RECEPTION2" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     @REM %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "RECEPTION3" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "RECEPTION4" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM     %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
@REM     @REM %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
@REM )

@REM if "%check_computername%" EQU "SURGERY2" (
@REM     set PRINTER=3
@REM     echo "Installing printers""
@REM )

if [%ZUPER%] == [1] (
    echo "Not installing printers"
) else (
        if [%PRINTER%] == [1] (
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
        )
        if [%PRINTER%] == [2] (
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
        )
        if [%PRINTER%] == [3] (
            %EXE% -ExecutionPolicy Bypass -File %BROTHERPS%
            %EXE% -ExecutionPolicy Bypass -File %ZEBRAPS%
        )
    )
