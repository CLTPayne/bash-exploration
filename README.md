## BASH

#### Cheat sheet:
- https://devhints.io/bash 
- https://www.tldp.org/LDP/abs/html/declareref.html
- https://www.shellhacks.com/tag/bash/

Fun thing to do - send an email:
`echo "Test" | $(which mail) -s "Test Message" <your email address as a string>`

#### Extension task:
Write a bash script that is a new git command for `git clone` that will always clone the project to a specific directory (e.g. `./projects`) without you having to `cd ./projects`

#### Interesting things to look at in Bash:
1. Brace expansion
2. Trapping something e.g. if a process exits you can trap on EXIT and clean up state / database connection etc - http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html

#### Handy things:
Set -e (any errors - just exit)
Set -u use variables
Set -o pipefail =give you the point at which it failed

-x debug mode (print out everything being executed as you run the script)

# Tools
- shellcheck vscode plugin for linting bash
- [bats](https://github.com/sstephenson/bats) for testing