#!/bin/bash
# TODO add test picking/running all
TIMESTAMP=`date +%y-%m-%d-%H-%M-%S-%3N`
FILENAME="$1-output-$TIMESTAMP.log"
HOST_IP=$3


if [ $1 == "ansible" ]
then
    if [ -z "$2" ]
    then
        echo "ERROR: NO TEST PROVIDED" >> output.log
    else
        TEST=`ls /root/kursinis-benchmark/test/"$1"/"$2"-*.yml`
    fi
    (/usr/bin/time -f '%U %S' ansible-playbook "$TEST") > "$FILENAME" 2> /tmp/timings
    
elif [ $1 == "salt" ]
then
    wget -O - https://bootstrap.saltproject.io | sh
    sed -i 's/#file_client: remote/file_client: local/g' /etc/salt/minion
    mkdir -P /srv/salt
elif [ $1 == "chef" ]
then
    echo "TODO"
else
    echo "Unkown configuration tool" >> output.log
fi

awk '{s=$1+$2} {print s}' /tmp/timings | nc 192.168.122.1 9566