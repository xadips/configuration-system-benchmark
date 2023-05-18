include git

exec { 'clone-my-repo':
    command => '/usr/bin/git clone https://github.com/xadips/kursinis-benchmark -o repo1'
}

exec { 'clone-kubernetes-repo':
    command => '/usr/bin/git clone https://github.com/kubernetes/kubernetes -o repo2'
}