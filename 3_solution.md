# Lab Solution

- First, enable and start your database.

      [root@mysql ~]# systemctl enable mariadb  

      [root@mysql ~]# systemctl start mariadb
  
      [root@mysql ~]# mysql -u root
  
      MariaDB [(none)]>

- Try out some examples:
  
      MariaDB [(none)]> SELECT NOW();
      +---------------------+
      | NOW()               |
      +---------------------+
      | 2015-01-06 20:24:20 |
      +---------------------+
  
      MariaDB [(none)]> SELECT NOW()\G
      ********** 1. row **********
      NOW(): 2015-01-06 20:24:20

The difference between ending a query with ; and \G is the format.

- Exit the mysql client.
  
      MariaDB [(none)]> \h
      List of all MySQL commands:
      Note that all text commands must be first on line and end with ';'
      ?         (\?) Synonym for `help'.
      clear     (\c) Clear the current input statement.
      connect   (\r) Reconnect to the server. Optional arguments are db and host.
      delimiter (\d) Set statement delimiter.
      edit      (\e) Edit command with $EDITOR.
      ego       (\G) Send command to mysql server, display result vertically.
      exit      (\q) Exit mysql. Same as quit.
      go        (\g) Send command to mysql server.
      help      (\h) Display this help.
      nopager   (\n) Disable pager, print to stdout.
      notee     (\t) Don't write into outfile.
      pager     (\P) Set PAGER [to_pager]. Print the query results via PAGER.
      print     (\p) Print current command.
      prompt    (\R) Change your mysql prompt.
      quit      (\q) Quit mysql.
      rehash    (\#) Rebuild completion hash.
      source    (\.) Execute an SQL script file. Takes a file name as an argument.
      status    (\s) Get status information from the server.
      system    (\!) Execute a system shell command.
      tee       (\T) Set outfile [to_outfile]. Append everything into given
                     outfile.
      use       (\u) Use another database. Takes database name as argument.
      charset   (\C) Switch to another charset. Might be needed for processing
                     binlog with multi-byte charsets.
      warnings  (\W) Show warnings after every statement.
      nowarning (\w) Don't show warnings after every statement.
      resetconnection(\x) Clean session context.
      query_attributes Sets string parameters (name1 value1 name2 value2 ...)
      for the next query to pick up.
      ssl_session_data_print Serializes the current SSL session data to stdout 
      or file.

      For server side help, type 'help contents'

      MariaDB [(none)]> \q
      Bye
    
- Shutdown, verify, and test with mysqladmin
  
      [root@mysql ~]# systemctl stop mariadb
  
      [root@mysql ~]# systemctl status mariadb

      Active: inactive (dead) since Wed 2015-03-25 21:13:58 UTC; 4s ago

      [root@mysql ~]# mysqladmin ping

      mysqladmin: connect to server at 'localhost' failed
  
- Start up your database once more and check that it’s running both with mysql and mysqladmin.

      [root@mysql ~]# systemctl start mariadb

      [root@mysql ~]# mysqladmin ping
      mysqld is alive
  
[![continue](./images/continue.png)](./4_SQL_Basics.md)
