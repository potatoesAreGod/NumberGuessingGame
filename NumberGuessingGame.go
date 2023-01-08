package main

import (
    "fmt"
    "math/rand"
    "time"
)

func main() {
    rand.Seed(time.Now().Unix())
    num := rand.Intn(100-1) + 1
    guessCount := 0
    var guess int

    for {
        fmt.Print("Guess the random number between 1 - 100: ")
        fmt.Scanf("%d", &guess)
        guessCount++

        if guess < num {
            fmt.Println("Your guess was too low, try again!")
        } else if guess > num {
            fmt.Println("Your guess was too high, try again!")
        } else if guess == num {
            break
        }
    }
    fmt.Printf("You guessed the number in %d tries\n", guessCount)
}
