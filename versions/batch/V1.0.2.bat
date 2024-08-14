@echo off
:menu
cls
color 5
echo.
echo.
echo =====================================
echo            Simple Tool
echo =====================================
echo.
echo.
echo 1) Start Task Manager
echo 2) Start Registry Editor
echo 3) Start File Explorer
echo 4) Start Command Prompt
echo 5) Restart Explorer
echo 6) Shutdown PC
echo 7) Close Program
echo 8) Get Information About Creator
echo 9) Restart PC
echo 10) Restart Program
color 1
set /p choice="Choose an option: "

:executeOption
if "%choice%"=="1" (
    start taskmgr.exe
) else if "%choice%"=="2" (
    start regedit.exe
) else if "%choice%"=="3" (
    start explorer.exe
) else if "%choice%"=="4" (
    start cmd.exe
) else if "%choice%"=="5" (
    echo Restarting Windows Explorer...
    taskkill /f /im explorer.exe
    start explorer.exe
) else if "%choice%"=="6" (
    echo Your computer will shutdown in 10 seconds...
    shutdown -s -t 10
) else if "%choice%"=="7" (
    echo See you later
    timeout /t 3 >nul
    exit
) else if "%choice%"=="8" (
    start Creatorinf.cpp
) else if "%choice%"=="9" (
    echo Your computer will restart in 10 seconds...
    shutdown -r -t 10
) else if "%choice%"=="10" (
    echo Restarting program...
    timeout /t 2 >nul
    goto menu
) else (
    echo Invalid option, try again.
)

pause
goto menu
