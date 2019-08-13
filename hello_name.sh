#!/usr/bin/env bash

# main () {

#     if [ "$1" = '' ]
#     then 
#         echo "Hello, you!"
#     else 
#         echo "Hello, $1!"
#     fi
# }

# main "$@"

# @ is all of the arguments that get passed to the script
# Must use double quotes for string interpolation like above in the echo statement

main () {
    name="$1"
    echo "Hello, ${name:-you}!"
}

main "$@"

# assigning a variable does not need a $ or any spaces around the =
# ${ :- } is for assigining a default argument 

# Declare can be used to simulate constants
declare -r name=Charlotte

# Declare an integer, but if you set a string to -i it will change it to 0
declare -i age=no 
declare -i age=1