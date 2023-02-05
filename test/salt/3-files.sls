ubuntu:
  user.present:
    - shell: /bin/bash
    - home: /home/ubuntu
    - uid: 4001

ubuntu:
  group.present:
    - gid: 7648
    - system: True
    - addusers:
      - ubuntu

/tmp/test1:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775
    - makedirs: True


/tmp/test2:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775
    - makedirs: True

/tmp/test3:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775
    - makedirs: True

/tmp/test4:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775
    - makedirs: True

/tmp/test5:
  file.directory:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775
    - makedirs: True

/tmp/test1/test1.txt:
  file.managed:
    - user: ubuntu
    - group: ubuntu
    - mode: 0775

/tmp/test1/test2.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test3.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test4.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test5.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test6.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test7.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test8.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test9.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test1/test10.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test1.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test2.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test3.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test4.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test5.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test6.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test7.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test8.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test9.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test2/test10.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test1.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test2.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test3.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test4.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test5.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test6.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test7.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test8.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test9.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test3/test10.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test1.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test2.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test3.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test4.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test5.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test6.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test7.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test8.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test9.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test4/test10.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test1.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test2.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test3.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test4.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test5.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test6.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test7.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test8.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test9.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

/tmp/test5/test10.txt:
  file.managed:
  - user: ubuntu
  - group: ubuntu
  - mode: 0775

