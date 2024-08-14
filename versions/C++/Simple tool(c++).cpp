#include <iostream>
#include <cstdlib>  // For system() function
#include <string>

void showMenu() {
    // Clear the screen and display the menu
    system("CLS");
    system("color 5");
    std::cout << "=====================================" << std::endl;
    std::cout << "           Simple Tool" << std::endl;
    std::cout << "=====================================" << std::endl;
    std::cout << std::endl;
    std::cout << "1) Start Task Manager" << std::endl;
    std::cout << "2) Start Registry Editor" << std::endl;
    std::cout << "3) Start File Explorer" << std::endl;
    std::cout << "4) Start Command Prompt" << std::endl;
    std::cout << "5) Restart Explorer" << std::endl;
    std::cout << "6) Shutdown PC" << std::endl;
    std::cout << "7) Close Program" << std::endl;
    std::cout << "8) Get Information About Creator" << std::endl;
    std::cout << "9) Restart PC" << std::endl;
    std::cout << "10) Restart Program" << std::endl;
    system("color 1");
}

void executeOption(int choice) {
    switch (choice) {
        case 1:
            system("start taskmgr.exe");
            break;
        case 2:
            system("start regedit.exe");
            break;
        case 3:
            system("start explorer.exe");
            break;
        case 4:
            system("start cmd.exe");
            break;
        case 5:
            std::cout << "Restarting Windows Explorer..." << std::endl;
            system("taskkill /f /im explorer.exe");
            system("start explorer.exe");
            break;
        case 6:
            std::cout << "Your computer will shutdown in 10 seconds..." << std::endl;
            system("shutdown -s -t 10");
            break;
        case 7:
            std::cout << "See you later" << std::endl;
            exit(0);
            break;
        case 8:
            system("start Creatorinf.cpp");
            break;
        case 9:
            std::cout << "Your computer will restart in 10 seconds..." << std::endl;
            system("shutdown -r -t 10");
            break;
        case 10:
            std::cout << "Restarting program..." << std::endl;
            system("CLS");
            showMenu();
            break;
        default:
            std::cout << "Invalid option, try again." << std::endl;
            break;
    }
}

int main() {
    int choice;

    while (true) {
        showMenu();
        std::cout << "Choose an option: ";
        std::cin >> choice;
        executeOption(choice);
        system("pause");
    }

    return 0;
}