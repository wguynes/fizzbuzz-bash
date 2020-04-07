#!/bin/bash

fizzbuzz() {
    if (( "${1}" <= 0 ))
    then
        return 1
    fi

    if (( "${1}" % 15 == 0 ))
    then
        echo "fizzbuzz"
    elif (( "${1}" % 3 == 0 ))
    then
        echo "fizz"
    elif (( "${1}" % 5 == 0 ))
    then
        echo "buzz"
    else
        echo "${1}"
    fi
    return 0
}
