#!/bin/bash
# TODO add test picking/running all
TIMESTAMP=`date +%y-%m-%d-%H-%M-%S-%3N`
FILENAME="$1-output-$TIMESTAMP.log"
if [ $1 == "ansible" ]
then
    (time ansible-playbook /root/kursinis-benchmark/test/ansible/1-users.yml) >> "$FILENAME" 2>&1
    scp -o StrictHostKeyChecking=no -P 9889 -i /etc/ssh/ssh_host_ed25519_key "$FILENAME" o0d4@192.168.122.1:/home/o0d4/Programming/kursinis-benchmark/logs/
elif [ $1 == "salt" ]
then
    echo "TODO"
elif [ $1 == "chef" ]
then
    echo "TODO"
else
    echo "Unkown configuration tool" >> output.log
fi
