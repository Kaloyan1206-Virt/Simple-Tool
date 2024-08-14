#include <iostream>
#include <windows.h>

void setConsoleColor(int backgroundColor, int textColor) {
    HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
    CONSOLE_SCREEN_BUFFER_INFO consoleInfo;
    GetConsoleScreenBufferInfo(hConsole, &consoleInfo);

    // Set the background and text color
    SetConsoleTextAttribute(hConsole, (backgroundColor << 4) | textColor);
}

int main() {
    // Change console background to blue and text to white
    setConsoleColor(BLUE, FOREGROUND_WHITE);
    std::cout << "Thanks for downloading Simple Tool (on batch)" << std::endl;

    // Change console background to green and text to white
    setConsoleColor(GREEN, FOREGROUND_WHITE);
    std::cout << "By Kaloyan-1206-Virt" << std::endl;

    // Pause (wait for user to press Enter)
    std::cout << "Press Enter to continue..." << std::endl;
    std::cin.get();

    // Exit the program
    return 0;
}