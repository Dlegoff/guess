#!/usr/bin/env bash

function guess(){
    true_answers=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please enter the amount you suppose"
        read  numberEnter
        if [ $numberEnter -lt $true_answers ]
        then
            echo "our guess is less than the real number put a higher number"
        elif [ $numberEnter -gt $true_answers ]
        then
            echo "your guess is greater than the real number put a smaller number"
        else
            echo "congratulation, I hit the choice of the number!"
        break;
        fi
    done
}
echo "guess the number of files in the current directory!"
guess