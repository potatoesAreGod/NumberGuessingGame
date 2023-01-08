$guessCount = 0
$guess = 0
$num = rand(100) + 1


until ($guess == $num) do
    print("Guess a number between 1 and 100:")
    $stdout.flush()
    $guess = gets().to_i
    $guessCount +=1

    if ($guess < $num)
        print("Your guess was too low")
        $stdout.flush()

    elsif ($guess > $num)
        print("Your guess was too high")
        $stdout.flush()

    end
end


puts("You win!")
puts("You needed #$guessCount attempts to guess the number")
puts("Press any key to continue . . .")

$stdout.flush()
gets
