import random


num = random.randint(1, 100)
guess = 0
guessCount = 0


def main():

    global guessCount
    guess = input("Guess a number between 1-100: ")
    guessCount += 1

    if (int(guess) < int(num)):
        print("Your guess was too low, try again!")
        main()

    elif (int(guess) > int(num)):
        print("Your guess was to high, try again!")
        main()

    else:
        print("You guessed correct!")
        print("You guessed " + str(guessCount) + " number of times")
        input("Press any key to continue . . .")


main()
