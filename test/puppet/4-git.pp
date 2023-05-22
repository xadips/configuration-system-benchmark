include git

exec { 'clone-my-repo':
    command => '/usr/bin/git clone https://github.com/xadips/configuration-system-benchmark /tmp/repo1'
}

exec { 'clone-kubernetes-repo':
    command => '/usr/bin/git clone https://github.com/kubernetes/kubernetes /tmp/repo2'
}