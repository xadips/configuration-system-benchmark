#!/bin/bash
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
    mkdir -p /srv/salt
    mv kursinis-benchmark/test/salt/top.sls /srv/salt/top.sls
    mv kursinis-benchmark/test/salt/$2-*.sls /srv/salt/current_test.sls
    (/usr/bin/time -f '%U %S' salt-call --local state.apply) > "$FILENAME" 2> /tmp/timings
elif [ $1 == "chef" ]
then
    wget https://packages.chef.io/files/stable/chef-workstation/21.10.640/ubuntu/20.04/chef-workstation_21.10.640-1_amd64.deb
    dpkg -i chef-workstation_21.10.640-1_amd64.deb
    git config --global user.email 'test@gmail.com'
    git config --global user.name 'tester'
    chef-solo --chef-license=accept-silent
    chef generate cookbook test --chef-license=accept-silent
    mv kursinis-benchmark/test/chef/$2-*.rb /root/test/recipes/default.rb
    (/usr/bin/time -f '%U %S' chef-solo -c kursinis-benchmark/test/chef/solo.rb -j kursinis-benchmark/test/chef/node.json) > "$FILENAME" 2> /tmp/timings
elif [ $1 == "puppet" ]
then
    TEST=`ls /root/kursinis-benchmark/test/"$1"/"$2"-*.pp`
    sed -i '/master/,+3d' /etc/puppet/puppet.conf
    puppet module install puppetlabs-git --version 0.5.0
    (/usr/bin/time -f '%U %S' puppet apply "$TEST") > "$FILENAME" 2> /tmp/timings
else
    echo "Unkown configuration tool" >> output.log
fi

TIMING=$(grep -E '[0-9]{1,9}.[0-9]{1,4}' /tmp/timings | awk '{s=$1+$2} {print s}')
echo "$TIMING" | nc "$HOST_IP" 9566 >> output.log
