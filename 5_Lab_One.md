# data-formatted.txt

    mysql> select * from movie;
    +----+----------------------------------+---------------------+-----------+
    | id | title                            | acquired            | borrow_id |
    +----+----------------------------------+---------------------+-----------+
    |  1 | Hackers                          | 2011-02-20 11:55:37 |      NULL | 
    |  2 | 2001: A Space Odyssey            | 2011-02-20 11:55:37 |      NULL | 
    |  3 | Ghostbusters                     | 2011-02-20 11:55:37 |      NULL | 
    |  4 | Star Wars Episode IV: A New Hope | 2011-02-20 11:55:37 |      NULL | 
    |  5 | Wall-E                           | 2011-02-20 11:55:37 |      NULL | 
    |  6 | The Matrix                       | 2011-02-20 11:55:37 |      NULL | 
    |  7 | Back To The Future               | 2011-02-20 11:55:37 |      NULL | 
    |  8 | The Blues Brothers               | 2011-02-20 11:55:37 |      NULL | 
    |  9 | Tron                             | 2011-02-20 11:55:37 |      NULL | 
    | 10 | Total Recall                     | 2011-02-20 11:55:37 |      NULL | 
    +----+----------------------------------+---------------------+-----------+
    10 rows in set (0.00 sec)

    mysql> select * from person;
    +----+----------+--------+----------------+--------+
    | id | first    | middle | last           | suffix |
    +----+----------+--------+----------------+--------+
    |  1 | Angelina | NULL   | Jolie          | NULL   | 
    |  2 | Stanley  | NULL   | Kubrick        | NULL   | 
    |  3 | Keir     | NULL   | Dullea         | NULL   | 
    |  4 | Bill     | NULL   | Murray         | NULL   | 
    |  5 | Dan      | NULL   | Aykroyd        | NULL   | 
    |  6 | Mark     | NULL   | Hamill         | NULL   | 
    |  7 | Ben      | NULL   | Burtt          | NULL   | 
    |  8 | Keanu    | NULL   | Reeves         | NULL   | 
    |  9 | Michael  | J      | Fox            | NULL   | 
    | 10 | Jeff     | NULL   | Bridges        | NULL   | 
    | 11 | Arnold   | NULL   | Schwarzenegger | NULL   | 
    | 12 | Iain     | NULL   | Softley        | NULL   | 
    | 13 | Ivan     | NULL   | Reitman        | NULL   | 
    | 14 | George   | NULL   | Lucas          | NULL   | 
    | 15 | Andrew   | NULL   | Stanton        | NULL   | 
    | 16 | Andy     | NULL   | Wachowski      | NULL   | 
    | 17 | Lana     | NULL   | Wachowski      | NULL   | 
    | 18 | Robert   | NULL   | Zemeckis       | NULL   | 
    | 19 | John     | NULL   | Landis         | NULL   | 
    | 20 | Steven   | NULL   | Lisberger      | NULL   | 
    | 21 | Paul     | NULL   | Verhoeven      | NULL   | 
    +----+----------+--------+----------------+--------+
    21 rows in set (0.00 sec)
