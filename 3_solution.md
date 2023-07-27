# Lab Solution

- First, enable and start your database.

      [root@mysql ~]# systemctl enable mariadb  

      [root@mysql ~]# systemctl start mariadb
  
      [root@mysql ~]# mysql -u root
  
      MariaDB [(none)]>
  
- Shutdown, verify, and test with mysqladmin
  
      [root@mysql ~]# systemctl stop mariadb
  
      [root@mysql ~]# systemctl status mariadb

      Active: inactive (dead) since Wed 2015-03-25 21:13:58 UTC; 4s ago

      [root@mysql ~]# mysqladmin ping

      mysqladmin: connect to server at 'localhost' failed
  
- Start up your database once more and check that it’s running both with mysql and mysqladmin.

      [root@mysql ~]# systemctl start mariadb

[![continue](./images/continue.png)](./4_SQL_Basics.md)
