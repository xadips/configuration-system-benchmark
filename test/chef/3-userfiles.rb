group 'ubuntu' do
  gid 1234
  system true
end
  
user 'ubuntu-user' do
  comment 'A random user'
  gid 1234
  home '/home/user1'
  shell '/bin/bash'
  username 'ubuntu'
end

directory '/tmp/test1' do
    owner 'ubuntu'
    group 'ubuntu'
    mode '0775'
end
  
directory '/tmp/test2' do
    owner 'ubuntu'
    group 'ubuntu'
    mode '0775'
end

directory '/tmp/test3' do
    owner 'ubuntu'
    group 'ubuntu'
    mode '0775'
end

directory '/tmp/test4' do
    owner 'ubuntu'
    group 'ubuntu'
    mode '0775'
end

directory '/tmp/test5' do
    owner 'ubuntu'
    group 'ubuntu'
    mode '0775'
end

file '/tmp/test1/test1.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test2.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test3.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test4.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test5.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test6.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test7.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test8.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test9.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test1/test10.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test1.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test2.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test3.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test4.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test5.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test6.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test7.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test8.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test9.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test2/test10.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test1.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test2.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test3.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test4.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test5.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test6.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test7.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test8.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test9.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test3/test10.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test1.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test2.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test3.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test4.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test5.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test6.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test7.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test8.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test9.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test4/test10.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test1.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test2.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test3.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test4.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test5.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test6.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test7.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test8.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test9.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end

file '/tmp/test5/test10.txt' do
    mode '0755'
    owner 'ubuntu'
    group 'ubuntu'
end
