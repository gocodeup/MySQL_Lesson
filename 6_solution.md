# Lab Solution

First, we use wildcard searches to get information

    MariaDB [MovieCollection]> SELECT * FROM person WHERE last LIKE 'B%' ORDER BY last ASC;
    | 10 | Jeff  | NULL   | Bridges | NULL   |
    |  7 | Ben   | NULL   | Burtt   | NULL   |

This one uses an AND statement to expand upon filtering from above.

    MariaDB [MovieCollection]> SELECT * FROM person WHERE first LIKE 'S%' AND last LIKE 'K%';
    |  2 | Stanley | NULL   | Kubrick | NULL   |

  [![continue](./images/continue.png)](./7_UPDATE_and_DELETE.md)
