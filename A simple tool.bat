:cs2
@echo off
echo 1) start taskmanager
echo 2) start regedit
echo 3) close program
color 2
set /p love=
if %love%==1 goto love
if %love%==2 goto hate
if %love%==3 goto exit
:love
start taskmgr.exe
pause
goto cs2
:hate
start regedit.exe 
pause
goto cs2
:exit
echo bye
pause
exit