# Lab Solution

[root@mysql ~]# yum install mariadb-server

Transaction Summary

Install  1 Package  (+8 Dependent packages)

Upgrade             ( 1 Dependent package)

Total download size: 22 M

[root@mysql ~]# systemctl enable mariadb.service

ln -s '/usr/lib/systemd/system/mariadb.service' '/etc/systemd/system/multi-user.target.wants/mariadb.service'

[root@mysql ~]# systemctl start mariadb

[![continue](./images/continue.png)](./2_Relational_Databases.md)
