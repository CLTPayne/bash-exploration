#!/usr/bin/env bash

main () {
    if (( "$1" % 3 == 0 )) && (( "$1" % 5 == 0 ))
    then 
        echo "FizzBuzz"
    elif (( "$1" % 5 == 0 ))
    then 
        echo "Buzz"
    elif (( "$1" % 3 == 0 )) 
    then 
        echo "Fizz"
    else 
        echo "$1"
    fi
}

main "$@"