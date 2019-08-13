#!/usr/bin/env bash

@test 'takes one argument and outputs Hello argument' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash hello_name.sh Charlotte

    [[ $status -eq 0 ]]
    [[ $output = 'Hello, Charlotte!' ]]
}

@test 'takes another argument and outputs Hello other argument' {
    # only run the first test, not this one
    [[ $BATS_RUN_SKIPPED == true ]] || skip

    run bash hello_name.sh Jennifer

    [[ $status -eq 0 ]]
    [[ $output = 'Hello, Jennifer!' ]]
}

# Run with the run skipped variable passed in:
# BATS_RUN_SKIPPED=true bats ./hello_name_test.sh

@test 'with no arguments it outputs, hello, you' {
    [[ $BATS_RUN_SKIPPED == true ]] || skip

    run bash hello_name.sh 
    [[ $status -eq 0 ]]
    [[ $output = 'Hello, you!' ]]
}