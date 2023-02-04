#!/bin/bash
# TODO add test picking/running all
TIMESTAMP=`date +%y-%m-%d-%H-%M-%S`
if [ $1 == "ansible" ]
then
    (time ansible-playbook /root/kursinis-benchmark/test/ansible/1-users.yml) >> "output-$TIMESTAMP.log" 2>&1
    scp
elif [ $1 == "salt" ]
then
    echo "TODO"
elif [ $1 == "chef" ]
    echo "TODO"
else
    echo "Unkown configuration tool" >> output.log
fi
