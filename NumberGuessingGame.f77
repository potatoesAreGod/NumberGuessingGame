program guess
    integer iGuess, iGuessCount, iNum
    iGuessCount = 0
    call srand(time())
    iNum = irand(0)
    iNum = mod(iNum, 100) + 1

    10 if (iGuess.NE.iNum) then
        print *, 'Guess the number between 1 - 100: '
        read(*,*) iGuess
        iGuessCount = iGuessCount + 1

        if (iGuess.GT.iNum) then
        print *, 'Your guess was too low!'
        end if

        if (iGuess.LT.iNum) then
        print *, 'Your guess was too high!'
        end if

        if (iGuess.EQ.iNum) then
        print *, 'You got it!'
        print *, 'You needed', iGuessCount, 'guesses to get it correct!'
        end if
        
    goto 10
    endif
stop
end
