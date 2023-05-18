#!/bin/zsh
touch timings.txt
ncat -k -l -p 9567 >> timings.txt &
