#!/bin/bash

if [ $1 == "ansible" ]
then
    (time ansible-playbook /root/kursinis-benchmark/test/ansible/1-users.yml) >> output.log 2>&1
else
    echo "Unkown configuration tool" >> output.log
fi
