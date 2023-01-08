math.randomseed(os.time())
local n = math.random(1,100)
local guesses = 0

print("Guess the random number between 1 and 100!")


repeat
    print("Make a guess: ")
    local guess = tonumber(io.read())

    if guess == n then
        print("You win!")
        print("You guessed: "..guesses.." times!")

        print("Press ENTER to continue . . .")
        io.read()

    elseif guess > n then
        print("Your guess was too high, try again!")
        guesses = guesses + 1

    elseif guess < n then
        print("Your guess was too low, try again!")
        guesses = guesses + 1

    end

until guess == n
