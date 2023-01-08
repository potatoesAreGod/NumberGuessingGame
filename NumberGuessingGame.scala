import scala.util.Random


object NumberGuessingGame {

    def main(args: Array[String]) {
        var guess = -1
        var guessCount = 0
        var num =  (new Random()).nextInt(100) + 1

        while (guess != num) {
            println("Guess the number between 1 - 100: ")
            guess = scala.io.StdIn.readInt()
            guessCount += 1

            if (guess > num) {
                println("Your guess was too high, try again!")
            } else if (guess < num) {
                println("Your guess was too low, try again!")
            } else if (guess == num) {
                println("You win!")
                println("You needed " + guessCount + " guesses to win!")

                println("Press ENTER to exit . . .")
                scala.io.StdIn.readLine()
            }
        }
    }
}
