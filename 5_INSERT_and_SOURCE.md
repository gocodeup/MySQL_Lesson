# Using INSERT and SOURCE

Using INSERT

Now that we have a database and some tables to work with, let’s start adding data! This is accomplished with the INSERT statement:

https://dev.mysql.com/doc/refman/8.0/en/insert.html

Generic syntax:

     INSERT INTO table_name ( column1, column2 ) VALUES ( data1, data2 );
     
This generic example would basically add a new row to the table "table_name", with column1 set to data1, and column2 set to data2.

INSERT is the first of many different Data Manipulation Language (DML) statements. DML statements mean that they modify data in some way, as opposed to DDL, that modify structures. Other DML statements include SELECT, DELETE, and UPDATE.

https://dev.mysql.com/doc/refman/8.0/en/sql-data-manipulation-statements.html

Example:

    INSERT INTO movie ( title, acquired ) VALUES ( 'Hackers', NOW() );
    
This will add a new row to the table "movie", with the data "Hackers" being put into the column "title", and NOW(), a function that means the current time, being put into the column "acquired".

Using the SOURCE Command

Imagine how tedious it would be to constantly have to type out every SQL query...That would take forever, and be prone to errors.
Thankfully, there are a few better ways to accomplish this same goal, with much less effort

    MariaDB [(none)]> SOURCE /path/to/filename
    
Example:

    MariaDB [(none)]> SOURCE /root/create-moviedb.sql
    Query OK, 0 rows affected (0.01 sec)
    
This example reads the SQL script file located at /root/create-moviedb.sql and executes each command from that file. Note: Using SOURCE is a verbose operation, and produces a large amount of output to your terminal.

# Lab Time One!

Insert a few rows of data from this list of information. You do not have to add all of them right now, as that’s too much tedious typing.

Make sure each row entered returns a "Query OK", and if you make a mistake, ignore it for now - in a few slides you’ll learn how to correct it.

[![continue](./images/continue.png)](./5_Lab_One.md)

[![continue](./images/solution.png)](./5_solution_one.md)

# Lab Time Two!

Download the following file using wget as root: https://raw.githubusercontent.com/sabrinasirens/MySQL_Lesson/main/moviedb.sql

SOURCE this database into MySQL

Once imported, verify your database is there using a SHOW command, such as SHOW DATABASES;

[![continue](./images/continue.png)](./5_Lab_Two.md)

[![continue](./images/solution.png)](./5_solution_two.md)
