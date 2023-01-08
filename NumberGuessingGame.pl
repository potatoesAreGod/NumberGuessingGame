$iGuessCount = 0;
$iNum = int(rand(100)) + 1;


while ($iGuess != $iNum) {

    print "Guess the number between 1 - 100: " . "\n";

    $iGuess = <STDIN>;

    $iGuessCount += 1;

    if ($iGuess > $iNum) {

        print "Your guess was too high, try again!" . "\n";

    } elsif ($iGuess < $iNum) {

        print "Your guess was too low, try again!" . "\n";

    } elsif ($iGuess == $iNum) {

        print "You win!" . "\n";
        print "You guessed " . $iGuessCount . " times." . "\n";

        print "Press enter to continue" . "\n";
        <STDIN>;
    }
}
