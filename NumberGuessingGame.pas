program numberGuessingGame(input, output);
var
    num, errorguess, guess, guessCount : integer;
    guessString : string;
begin
    randomize;
    writeln('Guess the random num between 1 - 100!');
    num := random(100) + 1;
    guessCount := 0;

    repeat
        repeat
            writeln('Make a guess: ');
            readln(guessString);
            val(guessString, guess, errorguess);
        until errorguess = 0;

        guessCount := guessCount + 1;
        if guess < num then
            writeln('Your guess was too low, try again!')
        else if guess > num then
            writeln('Your guess was too high, try again!');
    until guess = num;

    writeln('You won!');
    writeln('You needed ', guessCount, ' guesses.');
    writeln('Press ENTER to exit . . .');
    readln;
end.
