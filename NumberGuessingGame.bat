@echo off

setlocal
set /a cur=0
set /a num=%RANDOM%%%100+1


:repeat
    set /p guess=Make a guess: 
    set /a cur=cur+1
    
    if %guess% EQU %num% (
        goto end
    )
    if %guess% LSS %num% (
        echo You guessed too low!
        goto repeat
    )
    echo You guessed too high!
    goto repeat


:end
    echo You won!
    echo You guessed %cur% times to get it right!
    pause


endlocal
