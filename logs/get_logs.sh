#!/bin/bash
cat ips.txt | while read line 
do
    rsync -e 'ssh -o StrictHostKeyChecking=no' "root@$line:/root/*.log" /home/o0d4/Programming/kursinis-benchmark/logs
done

