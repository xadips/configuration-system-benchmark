#!/bin/zsh
touch timings.txt
ncat -k -l -p 9566 >> timings.txt &
