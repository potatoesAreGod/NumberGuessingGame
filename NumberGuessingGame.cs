using System;

namespace number.guessing.game {
    class Program {
        static void Main(string[] args) {
            Random random = new Random();
            int randomNum = random.Next(1, 100);
            int guess;
            int guessCount = 0;
            while (true) {
                Console.Write("Guess a number between 1-100: ");
                guess = Convert.ToInt32(Console.ReadLine());
                guessCount++;
                if (guess == randomNum) {
                    Console.WriteLine("You won!");
                    Console.WriteLine("It took you " + guessCount + " guesses");
                    Console.Write("Press Any Key To Continue . . .");
                    Console.ReadLine();
                    break;
                }
                else if (guess > randomNum) {
                    Console.WriteLine("Your guess was too high, try again!");
                }
                else if (guess < randomNum) {
                    Console.WriteLine("Your guess was too low, try again!");
                }
            }
        }
    }
}