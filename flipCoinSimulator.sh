#! /bin/bash

heads=0
tails=0
while [ true ]
do
        num=$(( RANDOM ))
        if [ $(( num % 2)) -eq 0 ]
        then
                heads=$(( heads + 1 ))
        else
                tails=$(( tails + 1 ))
        fi
        if [ $heads -ge 21 ] && [ $tails -ge 21 ]
        then
                break
        fi
done

if [ $heads -eq $tails ]
then
        echo "Its a tie"
        while [ true ]
        do
                num=$(( RANDOM ))
                if [ $(( num % 2)) -eq 0 ]
                then
                        heads=$(( heads + 1 ))
                else
                        tails=$(( tails + 1 ))
                fi
                if [ $((heads-tails)) -ge 2 ] || [ $((tails-heads)) -ge 2 ]
                then
                        break
                fi
        done

        if [ $heads -gt $tails ]
        then
                diff=$((heads-tails))
                echo "Heads wins by $diff amount"
        else
                diff=$((tails-heads))
                echo "Tails wins by $diff amount"
        fi
elif [ $heads -gt $tails ]
then
        diff=$((heads-tails))
        echo "Heads wins by $diff amount"
else
        diff=$((tails-heads))
        echo "Tails wins by $diff amount"
fi
