import os
import time

def main():
    # Change text color to blue (background) and white (foreground)
    os.system('color 1F')

    # Display messages
    print("Thanks for downloading Simple Tool (on batch)")

    # Change text color to green
    os.system('color 2F')

    print("By Kaloyan-1206-Virt")

    # Pause (wait for user to press Enter)
    input("Press Enter to continue...")

    # Clear the screen
    os.system('cls')

    # Exit the script
    exit()

if __name__ == "__main__":
    main()