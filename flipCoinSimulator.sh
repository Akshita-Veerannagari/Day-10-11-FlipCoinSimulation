#! /bin/bash

num=$(( RANDOM ))
if [ $(( num % 2)) -eq 0 ]
then
        echo "Head is winner"
else
        echo "Tail is winner"
fi

