#!/usr/bin/env bash

@test 'returns fizz if the arugment is divisible by 3' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash fizzbuzz.sh 3

    [[ $status -eq 0 ]]
    [[ $output = 'Fizz' ]]
}

@test 'returns buzz if the arugment is divisible by 5' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash fizzbuzz.sh 5

    [[ $status -eq 0 ]]
    [[ $output = 'Buzz' ]]
}

@test 'returns fizzbuzz if the arugment is divisible by 15' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash fizzbuzz.sh 15

    [[ $status -eq 0 ]]
    [[ $output = 'FizzBuzz' ]]
}

@test 'returns the number if the arugment is not divisible by 3 & 5' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash fizzbuzz.sh 2

    [[ $status -eq 0 ]]
    [[ $output = '2' ]]
}