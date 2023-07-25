# Using UPDATE and DELETE

**Using UPDATE**

With the foundation of WHERE clauses, the final two major DML SQL statements can be explored: UPDATE and DELETE.

To change information in a table, use the UPDATE statement

Generic Syntax:

    UPDATE table SET name=value... WHERE conditions;'
    
Example:

    UPDATE movie SET acquired=NOW() WHERE title = 'Tron';
    
This example will access the table "movie" and set the column "acquired" to the current datetime for any row where the value of the column "title" is Tron.
#
**Using DELETE**

Finally, to remove rows from a table, use the DELETE statement. Use the WHERE clause to delete specific rows:

Generic Syntax:

    DELETE FROM table WHERE conditions
    
Example:

    DELETE FROM person WHERE last LIKE 'B%';
    
This will delete every row in the table "person" where the column "last" begins with the letter B.

# Lab Time!

- Use the UPDATE command to change the column "borrow_id" to the number "1" in the table "movie", but only if the column "id" is equal to "4".
- Use the UPDATE command to change the column "acquired" to the current datetime for all movies that start with the letter "t".
- Use the DELETE command to remove any actor from the table "person" that has a column "first" starting with "k", and a column "last" starting with "r".

[![continue](./images/continue.png)](./7_solution.md)
