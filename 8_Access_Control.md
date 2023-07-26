# MySQL Access Control

**Users**

For the entire lesson up until this point, we have been logging in to the database as user root. Generally, this is not desirable behavior for a number of reasons:
- Sharing - One user and one password implies that multiple users are sharing the same account, and that is bad karma.
- Security - The root user by default can do anything, including wiping out everything.
- Accountability - With only one account, there is no way to determine who made changes.

To create a new user, use the CREATE USER statement:

Generic Syntax:

    CREATE USER 'username'@'hostname' IDENTIFIED BY 'password';
    
Example:

    CREATE USER 'moviedba'@'localhost' IDENTIFIED BY 'popcorn';
    
This creates a new account with no privileges called "moviedba" with a password of "popcorn", allowed to login from "localhost".

The IDENTIFIED BY clause is special, as it takes the following information, 'popcorn', and hashes it. All passwords are expected to be hashed in the MySQL/MariaDB database.

It is important to remember that mysqld looks at both the username AND the hostname of the connecting client.

    'user'@'localhost'
    'user'@'127.0.0.1'
    'user'@'silly.example.com'
    
While all three of these examples have the same username, these are NOT the same. The permissions of the connecting user will be based off the matching hostname. IE, you can have different permissions for each one of the above examples.

Using the CREATE command to create a user is considered the "old" way of adding users. The newer, standard way to add users is to simply use the GRANT command. More on that soon.
#
**Changing Passwords**

At some point, changing the password for a user will be required. This is done using the SET PASSWORD command/clause. Properly setting a password will ensure that the new password is hashed.

Generic Syntax:

    SET PASSWORD FOR 'username'@'hostname' = PASSWORD('cleartext password');
    
Example:

    SET PASSWORD FOR 'bob'@'%' = PASSWORD('banana');
    
This example will change only the user matching 'bob'@'%' to a cleartext password of 'banana'. Of course, it is stored in the mysql database as a hash.
#
**Privileges**

The various actions that can be performed in MySQL are categorized into privileges, and the ability to perform an action is controlled by the privileges that have been granted to a user.

Examples of some privileges:

- SELECT: Issue SELECT statements
- INSERT: Insert new data
- DROP: Dropping structures within the database
- SHUTDOWN: Allowed to initiate a shutdown of the server
#
**Using GRANT**

For flexibility, most privileges are tied to server structures, such as databases, tables, rows and columns. This allows an administrator to GRANT the desired level of access, to individual structures in the database.

https://dev.mysql.com/doc/refman/8.0/en/grant.html

Generic Syntax:

    GRANT privileges ( columns ) ON what TO account
    
Example:

    GRANT SELECT ON MovieCollection.* TO 'moviedba'@'localhost';
    
This GRANT allows "moviedba" connected from "localhost" to perform SELECT statements on all tables in the "MovieCollection" database.

You can use GRANT to not only give permissions, but also create users. Compare the following commands:

    CREATE USER 'someuser'@'localhost' IDENTIFIED by 'cheese';
    GRANT ALL ON *.* TO 'someuser'@'localhost';
    
As opposed to the following:

    GRANT ALL ON *.* TO 'someuser'@'localhost' IDENTIFIED BY 'cheese';
    
As you can see, there is a lot less typing with the second command, and yet, they both do the exact same thing.
#
**Privilege Levels**

As mentioned previously, privileges can be granted on several different levels. This is achieved with the what parameter to the ON clause in the GRANT statement:

- GRANT ALL ON *.* ...
- GRANT ALL ON MovieCollection.* ...
- GRANT ALL ON MovieCollection.movie ...
- GRANT UPDATE, SELECT ( title ) ON MovieCollection.movie ...
#
**Privilege Tables**

In the mysql database, there are tables which describe the various access controls:
- user: The user accounts and global privileges
- db: Database level privileges
- host: Host level privileges ( generally not used )
- tables_priv: Table level privileges
- columns_priv: Column level privileges
#
**The mysql Database**

The mysql database is not just limited to holding privilege information, it also stores most of the server information as well.

    MariaDB [(none)]> SELECT * from mysql.user\G 
    *************************** 1. row ***************************
                      Host: localhost
                      User: root
    MariaDB [mysql]> SELECT * FROM mysql.columns_priv\G 
    *************************** 1. row ***************************
           Host: localhost
             Db: MovieCollection
           User: root
    MariaDB [mysql]> SELECT user,host,password FROM mysql.user;
    +------+--------------------+----------+
    | user | host               | password |
    +------+--------------------+----------+
    | root | localhost          |          |
    | root | 172.25.0.10        |          |
#
**Securing the server with scripts**

When mysql is installed the root password is blank. This and some other accounts should be password protected for better security. This can be done automatically with some scripts added when mariadb was installed. This can be done with the following script.

    root@servera ~]# mysql_secure_installation
# Lab Time!

- Consult the [MySQL documentation](https://dev.mysql.com/doc/refman/8.0/en/grant.html) or [MariaDB documentation](https://mariadb.com/kb/en/grant/) for details on privileges. There are around 26 privileges available.
- Secure your mysql installation with the mysql_secure_installation scripts
- Create a full power “moviedba” user with full access to everything in the MovieCollection database. Test the account.
- Create a “movieclerk” user which has full select privileges on all tables in MovieCollection, and insert/update/delete privileges on just the person table in MovieCollection. Test the account.

[![continue](./images/continue.png)](./8_solution.md)
