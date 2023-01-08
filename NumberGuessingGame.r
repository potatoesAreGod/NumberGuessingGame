num = floor(runif(1, min=1, max=100))
guess = 0
guessCount = 0


while(TRUE) {
    cat("Guess the number between 1 and 100: ")

    guess = scan(n=1)

    guessCount = guessCount + 1

    if(guess < num) {
        cat("Your guess is too low. Try again.\n")
        
    } else if (guess > num) {
        cat("Your guess is too high. Try again.\n")

    } else {
        break
    }
}


cat("You win!\n")
cat("You guessed", guessCount, "times!\n")

cat("Press ENTER to continue . . .")
scan()
