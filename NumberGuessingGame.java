import java.util.Random;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Random randNum = new Random();
        int num = randNum.nextInt(100);
        int guessCount = 0;
        Scanner scan = new Scanner(System.in);
        int guess;
        boolean win = false;

        while(win == false) {
            System.out.println("Guess a number between 1 to 100: ");
            guess = scan.nextInt();
            guessCount++;

            if(guess == num) {
                win = true;
            }
            else if(guess < num){
                System.out.println("Your guess is lower than the correct number!");
            }
            else if(guess > num) {
                System.out.println("Your guess is higher than the correct number!");
            }
        }
        System.out.println("You won!");
        System.out.println("You needed " + guessCount + " attempts to guess the right number");
    }
}