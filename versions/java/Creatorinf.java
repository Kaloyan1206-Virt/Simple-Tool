public class SimpleTool {
    // ANSI escape codes for color
    public static final String RESET = "\033[0m";  // Reset color
    public static final String BLUE_BACKGROUND = "\033[44m";
    public static final String GREEN_BACKGROUND = "\033[42m";
    public static final String WHITE_TEXT = "\033[37m";

    public static void main(String[] args) {
        // Change console background to blue and text to white
        System.out.print(BLUE_BACKGROUND + WHITE_TEXT);
        System.out.println("Thanks for downloading Simple Tool (on batch)");

        // Change console background to green and text to white
        System.out.print(GREEN_BACKGROUND + WHITE_TEXT);
        System.out.println("By Kaloyan-1206-Virt");

        // Reset to default console colors
        System.out.print(RESET);

        // Pause (wait for user to press Enter)
        System.out.println("Press Enter to continue...");
        try {
            System.in.read();
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Exit the program
        System.exit(0);
    }
}