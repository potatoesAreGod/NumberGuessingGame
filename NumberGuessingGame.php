<?php
    $guessCount = 0;
    $num = rand(1, 100);

    while ($guess != $num) {

        echo "Guess the number between 1 - 100: \n";

        $guess = trim(fgets(STDIN));
        $guessCount++;

        if ($guess > $num) {

            echo "Your guess was too high, try again!\n";

        } elseif ($guess < $num) {

            echo "Your guess was too low, try again!\n";

        } elseif ($guess == $num) {

            echo "You win!" . "\n";
            echo $guessCount . " Guesses was made.\n";

            echo "Press ENTER to continue . . .";
            fgets(STDIN);
        }
    }
?>
