# Using the SELECT Command

**Using SELECT**

With data in the database, now the question is how to view it. This is where the SELECT statement comes in.

https://dev.mysql.com/doc/refman/8.0/en/select.html

Generic Syntax:

    SELECT columns FROM table
    
The SELECT statement is a very powerful tool, and there is quite a bit to it. A simple example:

    SELECT * FROM movie;
    
This will return all columns for every row in the "movie" table.
#
**Using the WHERE Clause**

The bare SELECT statement is occasionally useful for a full dump of the information in a table, but normally, we are only interested in specific rows. Use of the WHERE clause in conjunction with SELECT will filter the results of a query.

Generic Syntax:

    SELECT columns FROM table WHERE conditions;
    
Example:

    SELECT * FROM person WHERE first = 'John';
   
In this example, it will only return rows of information from the "person" table where the column named "first" matches "John".
#
**WHERE Conditions Examples**

    SELECT * FROM movie WHERE title = 'tron';
This example will only output rows from the "movie" table that has "tron" in the "title" column, regardless of case.

    SELECT * FROM movie WHERE BINARY title = 'tron';
This example will only output rows from the "movie" table that have "tron" in the "title" column. BINARY will make the search case sensitive.

    SELECT * FROM movie WHERE id < 10 AND id > 5;
This example will only output rows for the "movie" table that have an "id" greater than 5, but less than 10, IE 6, 7, 8, and 9

    SELECT * FROM person WHERE id <= 10 AND id >= 5;
This example will only output rows for the "movie" table that have an "id" greater than or equal to 5, but less than or equal to 10, IE 5, 6, 7, 8, 9, and 10. This can only be used with the greater than or less than to the left of the equal sign.

#
**Using the LIKE Operator**

Sometimes, you will need to filter rows with a search pattern, similar to wildcards.
    SELECT columns FROM table WHERE column LIKE pattern;
    
https://dev.mysql.com/doc/refman/8.0/en/string-comparison-functions.html

When using the LIKE operator, the percent (%) works like an astrisk (*), and the underscore (_) works like a question mark (?).

Example:

    SELECT * FROM person WHERE first LIKE 'J%';
    
This example will display any row in the "person" table where the column "first" matches "J*". IE, it would match "John", "James", and "Jill", but not "Frank".
#
**Using the CONCAT function**

Using SELECT will get a wide range of data out of your database, but there are times you will find the need to display them in different ways. For this, we have CONCAT. CONCAT is just one of hundreds of neat functions.

https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

    SELECT CONCAT(conditions) FROM tables_name;
    
Example:

    SELECT CONCAT(first, last) FROM person;
    SELECT CONCAT(last, ' ', first) FROM person;
   
With these two examples, we took the same data from inside the table "person", but we used CONCAT to change how it was displayed. Neat!
#
**Using ORDER BY**

SELECT statements also support the ability to order results, via the ORDER BY clause:
    SELECT columns FROM table ORDER BY specification
    
Example:

    SELECT * FROM person ORDER BY last ASC;
    
This will return all columns for all rows from the "person" table ordered by the column "last" in ascending order.
#
**Using LIMIT**

Sometimes a user is only interested in seeing a subset of the results. This is achieved with the LIMIT clause:
    SELECT columns FROM table LIMIT number

Example:

    SELECT * FROM person LIMIT 5;
    
This query will return 5 rows from the "person" table. Rows are returned from disk in the order they are stored, but that order changes constantly based on DML operations. This is why it is difficult to predict which rows will be returned when limiting an unordered query.

# Lab Time

- Create a list of people from the database have a last name that starts with ‘B’? This list needs to be displayed in alphabetical order.
- Create a list of people from the database that have a first name that starts with "S", AND the last name starts with "K".

[![continue](./images/continue.png)](./6_solution.md)
