# Lab Solution

    [root@mysql ~]# mysql
    MariaDB [none]>CREATE DATABASE MovieCollection;
    Query OK, 0 rows affected (0.01 sec)
    MariaDB [none]>USE MovieCollection

    MariaDB [MovieCollection]>CREATE TABLE movie (
        id              INT UNSIGNED NOT NULL AUTO_INCREMENT, PRIMARY KEY ( id ),
        title           VARCHAR(50) NOT NULL,
        acquired        DATETIME,
        borrow_id       INT
    );
    Query OK, 0 rows affected (0.01 sec)
    MariaDB [MovieCollection]>CREATE TABLE person (
        id              INT UNSIGNED NOT NULL AUTO_INCREMENT, PRIMARY KEY ( id ),
        first           VARCHAR(20) NOT NULL,
        middle          VARCHAR(20),
        last            VARCHAR(20),
        suffix          VARCHAR(20)
    );
    Query OK, 0 rows affected (0.01 sec)

[![continue](./images/continue.png)](./5_INSERT_and_SOURCE.md)
