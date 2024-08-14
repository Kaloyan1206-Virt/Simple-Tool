Option Explicit

Dim choice

Do
    ' Display the menu
    WScript.Echo "====================================="
    WScript.Echo "           Simple Tool"
    WScript.Echo "====================================="
    WScript.Echo
    WScript.Echo "1) Start Task Manager"
    WScript.Echo "2) Start Registry Editor"
    WScript.Echo "3) Start File Explorer"
    WScript.Echo "4) Start Command Prompt"
    WScript.Echo "5) Restart Explorer"
    WScript.Echo "6) Shutdown PC"
    WScript.Echo "7) Close Program"
    WScript.Echo "8) Get Information About Creator"
    WScript.Echo "9) Restart PC"
    WScript.Echo "0) Restart Program"

    ' Get the user's choice
    choice = InputBox("Choose an option:", "Simple Tool")

    ' Handle the choice
    Select Case choice
        Case "1"
            Call StartTaskManager
        Case "2"
            Call StartRegistryEditor
        Case "3"
            Call StartExplorer
        Case "4"
            Call StartCmd
        Case "5"
            Call RestartExplorer
        Case "6"
            Call ShutdownPC
        Case "7"
            Call CloseProgram
        Case "8"
            Call GetCreatorInfo
        Case "9"
            Call RestartPC
        Case "0"
            ' Restart the script by looping to the start
            ' No need to explicitly restart since we're in a loop
        Case Else
            WScript.Echo "Invalid option, try again."
    End Select

Loop Until choice = "7" ' Exit the loop if the user chooses to close the program

' Subroutines for each option
Sub StartTaskManager
    CreateObject("WScript.Shell").Run "taskmgr.exe", 1, False
End Sub

Sub StartRegistryEditor
    CreateObject("WScript.Shell").Run "regedit.exe", 1, False
End Sub

Sub StartExplorer
    CreateObject("WScript.Shell").Run "explorer.exe", 1, False
End Sub

Sub StartCmd
    CreateObject("WScript.Shell").Run "cmd.exe", 1, False
End Sub

Sub RestartExplorer
    Dim shell
    Set shell = CreateObject("WScript.Shell")
    shell.Run "taskkill /f /im explorer.exe", 0, True
    shell.Run "explorer.exe", 1, False
End Sub

Sub ShutdownPC
    WScript.Echo "Your computer will shutdown in 10 seconds..."
    CreateObject("WScript.Shell").Run "shutdown -s -t 10", 1, False
End Sub

Sub RestartPC
    WScript.Echo "Your computer will restart in 10 seconds..."
    CreateObject("WScript.Shell").Run "shutdown -r -t 10", 1, False
End Sub

Sub CloseProgram
    WScript.Echo "See you later"
    WScript.Sleep 3000
    WScript.Quit
End Sub

Sub GetCreatorInfo
    CreateObject("WScript.Shell").Run "Creatorinf.bat", 1, False
End Sub