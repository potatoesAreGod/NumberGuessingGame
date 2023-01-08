#!/usr/bin/env bash

num=$(($RANDOM%100+1))

guess=0
guessCount=0


until [ $num -eq $guess ]
do

    echo -n "Guess a number between 1 - 100: "
    read guess
    guessCount=$((guessCount+1))

    if [ $num -gt $guess ]
    then
        echo "Your guess was too low, try again!"
    elif [ $num -lt $guess ]

    then
        echo "Your guess was too high, try again!"
    fi

done


echo "You won!"
echo "You needed $guessCount attempts to guess the number"
