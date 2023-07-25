# Lab Two Solution

First, we need to download the moviedb.sql file, I recommend wget.

    [root@mysql ~]# wget https://raw.githubusercontent.com/sabrinasirens/MySQL_Lesson/main/moviedb.sql
    100%[======================================>] 2,585       --.-K/s   in 0s
    2015-04-06 14:07:56 (252 MB/s) - ‘moviedb.sql’ saved [2585/2585]
  
Then, we start up the mysql client, and then run the source command.

    [root@mysql ~]# mysql
    MariaDB [(none)]> SOURCE /root/moviedb.sql
    Query OK, 1 row affected (0.01 sec)
    Database changed
    Query OK, 0 rows affected (0.01 sec)
    Query OK, 0 rows affected (0.00 sec)

[![continue](./images/back.jpeg)](./5_INSERT_and_SOURCE.md)
