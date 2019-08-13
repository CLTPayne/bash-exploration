#!/usr/bin/env bash

@test 'helloworld.sh outputs Hello World' {
    #[[ $BATS_RUN_SKIPPED == true ]] || skip
    run bash helloworld.sh

    [[ $status -eq 0 ]]
    [[ $output = 'Hello, World!' ]]
}

# [[ ]] for string conditions
#  (( )) for maths conditions 