git '/tmp/repo' do
    repository 'https://github.com/xadips/kursinis-benchmark.git'
    revision 'main'
    action :sync
end

git '/tmp/repo2' do
    repository 'https://github.com/kubernetes/kubernetes.git'
    revision 'main'
    action :sync
end