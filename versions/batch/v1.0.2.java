import java.util.Scanner;
import java.io.IOException;

public class SimpleTool {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String choice;

        do {
            // Display the menu
            System.out.println("=====================================");
            System.out.println("           Simple Tool");
            System.out.println("=====================================");
            System.out.println();
            System.out.println("1) Start Task Manager");
            System.out.println("2) Start Registry Editor");
            System.out.println("3) Start File Explorer");
            System.out.println("4) Start Command Prompt");
            System.out.println("5) Restart Explorer");
            System.out.println("6) Shutdown PC");
            System.out.println("7) Close Program");
            System.out.println("8) Get Information About Creator");
            System.out.println("9) Restart PC");
            System.out.println("0) Restart Program");
            System.out.print("Choose an option: ");

            choice = scanner.nextLine();

            // Handle the choice
            switch (choice) {
                case "1":
                    startTaskManager();
                    break;
                case "2":
                    startRegistryEditor();
                    break;
                case "3":
                    startExplorer();
                    break;
                case "4":
                    startCmd();
                    break;
                case "5":
                    restartExplorer();
                    break;
                case "6":
                    shutdownPC();
                    break;
                case "7":
                    closeProgram();
                    break;
                case "8":
                    getCreatorInfo();
                    break;
                case "9":
                    restartPC();
                    break;
                case "0":
                    // Loop continues automatically, no need to restart explicitly
                    break;
                default:
                    System.out.println("Invalid option, try again.");
                    break;
            }

        } while (!choice.equals("7")); // Exit loop if the user chooses to close the program
    }

    // Methods for each option
    private static void startTaskManager() {
        executeCommand("taskmgr");
    }

    private static void startRegistryEditor() {
        executeCommand("regedit");
    }

    private static void startExplorer() {
        executeCommand("explorer");
    }

    private static void startCmd() {
        executeCommand("cmd");
    }

    private static void restartExplorer() {
        executeCommand("taskkill /f /im explorer.exe");
        executeCommand("explorer");
    }

    private static void shutdownPC() {
        System.out.println("Your computer will shut down in 10 seconds...");
        executeCommand("shutdown -s -t 10");
    }

    private static void restartPC() {
        System.out.println("Your computer will restart in 10 seconds...");
        executeCommand("shutdown -r -t 10");
    }

    private static void closeProgram() {
        System.out.println("See you later.");
        try {
            Thread.sleep(3000); // Pause for 3 seconds before exiting
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.exit(0);
    }

    private static void getCreatorInfo() {
        // Assuming "Creatorinf.vbs" is a script that displays information about the creator
        executeCommand("wscript Creatorinf.vbs");
    }

    // Helper method to execute system commands
    private static void executeCommand(String command) {
        try {
            Runtime.getRuntime().exec(command);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}