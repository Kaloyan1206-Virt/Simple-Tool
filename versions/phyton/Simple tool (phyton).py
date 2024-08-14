import os
import subprocess
import time

def main_menu():
    print("=====================================")
    print("           Simple Tool")
    print("=====================================")
    print()
    print("1) Start Task Manager")
    print("2) Start Registry Editor")
    print("3) Start File Explorer")
    print("4) Start Command Prompt")
    print("5) Restart Explorer")
    print("6) Shutdown PC")
    print("7) Close Program")
    print("8) Get Information About Creator")
    print("9) Restart PC")
    print("0) Restart Program")
    print()

def start_task_manager():
    subprocess.Popen("taskmgr.exe")

def start_registry_editor():
    subprocess.Popen("regedit.exe")

def start_explorer():
    subprocess.Popen("explorer.exe")

def start_cmd():
    subprocess.Popen("cmd.exe")

def restart_explorer():
    subprocess.call(["taskkill", "/f", "/im", "explorer.exe"])
    subprocess.Popen("explorer.exe")

def shutdown_pc():
    print("Your computer will shutdown in 10 seconds...")
    subprocess.call(["shutdown", "-s", "-t", "10"])

def restart_pc():
    print("Your computer will restart in 10 seconds...")
    subprocess.call(["shutdown", "-r", "-t", "10"])

def close_program():
    print("See you later")
    time.sleep(3)
    exit()

def get_creator_info():
    subprocess.Popen("Creatorinf.bat")

def restart_program():
    print("Restarting the program...")
    time.sleep(2)
    main()

def main():
    while True:
        main_menu()
        choice = input("Choose an option: ")

        if choice == "1":
            start_task_manager()
        elif choice == "2":
            start_registry_editor()
        elif choice == "3":
            start_explorer()
        elif choice == "4":
            start_cmd()
        elif choice == "5":
            restart_explorer()
        elif choice == "6":
            shutdown_pc()
        elif choice == "7":
            close_program()
        elif choice == "8":
            get_creator_info()
        elif choice == "9":
            restart_pc()
        elif choice == "0":
            restart_program()
        else:
            print("Invalid option, try again.")

if __name__ == "__main__":
    main()