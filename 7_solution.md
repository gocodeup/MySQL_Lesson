# Lab Solution

The following commands will update the rows and fields as expected. Check your work with a SELECT command.

    MariaDB [MovieCollection]> UPDATE movie SET borrow_id=1 WHERE id=4;
    Query OK, 0 rows affected (0.00 sec)
    Rows matched: 1  Changed: 0  Warnings: 0
    
    MariaDB [MovieCollection]> UPDATE movie SET acquired=NOW() WHERE title LIKE 'T%';
    Query OK, 4 rows affected (0.00 sec)
    Rows matched: 4  Changed: 4  Warnings: 0
    
    MariaDB [MovieCollection]> DELETE FROM person WHERE first LIKE 'k%' AND last LIKE 'r%';
    Query OK, 1 row affected (0.00 sec)

[![continue](./images/continue.png)](./8_Access_Control.md)
