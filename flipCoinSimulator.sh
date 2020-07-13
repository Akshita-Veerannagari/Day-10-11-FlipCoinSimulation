#! /bin/bash

headCount=0
tailCount=0
for(( counter=1; counter<=10; counter++ ))
do
        num=$(( RANDOM ))
        if [ $(( num % 2)) -eq 0 ]
        then
                (( headCount++ ))
        else
                (( tailCount++ ))
        fi
done
echo "Heads has won $headCount times"
echo "Tails has won $tailCount times"

