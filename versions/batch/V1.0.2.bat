@echo off
color 5
echo =====================================
echo           Simple Tool
echo =====================================
echo  .
echo  .
echo  .
color 1
echo 1) Start Task Manager
echo 2) Start Registry Editor
echo 3) Start File Explorer
echo 4) Start Command Prompt
echo 5) Restart Explorer
echo 6) Shutdown PC
echo 7) Close Program
echo 8) Get Information About Creator
echo 9) Restart PC
color 1
set /p love=Choose an option: 

if %love%==1 goto love
if %love%==2 goto hate
if %love%==3 goto explorer
if %love%==4 goto cmd
if %love%==5 goto restart_explorer
if %love%==6 goto exitt
if %love%==7 goto leave
if %love%==8 goto about
if %love%==9 goto restart
goto cs2

:love
start taskmgr.exe
cls
goto cs2

:hate
start regedit.exe 
cls
goto cs2

:explorer
start explorer.exe
cls
goto cs2

:cmd
start cmd.exe
cls
goto cs2

:restart_explorer
echo Restarting Windows Explorer...
taskkill /f /im explorer.exe
start explorer.exe
cls
goto cs2

:exitt
echo Your computer will shutdown in 10 seconds...
shutdown -s -t 10
goto leave

:restart
echo Your computer will restart in 10 seconds...
shutdown -r -t 10
goto leave

:leave
echo See you later
timeout 3
exit

:about
start Creatorinf.bat
cls
goto cs2

:cs2
cls
goto cs2
