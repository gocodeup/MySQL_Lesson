# Lab Solution

Here, we use GRANT to create the user, and set permissions in one line.

    MariaDB [MovieCollection]> GRANT ALL ON MovieCollection.* TO 'moviedba'@'localhost'
     IDENTIFIED BY 'popcorn';
    Query OK, 0 rows affected (0.00 sec)
    
This requires 2 commands, 1 to create and grant, and then an addional grant.

    MariaDB [MovieCollection]> GRANT SELECT ON MovieCollection.* TO 'movieclerk'@'localhost'
     IDENTIFIED by 'popcorn';
    Query OK, 0 rows affected (0.00 sec)
    
    MariaDB [MovieCollection]> GRANT UPDATE,INSERT,DELETE ON MovieCollection.person TO
     'movieclerk'@'localhost';
    Query OK, 0 rows affected (0.00 sec)
# Lesson Complete 
[![continue](./images/continue.png)](./)
