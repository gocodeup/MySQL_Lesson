# Lab One Solution
First way to do it:

    INSERT INTO movie ( title, acquired ) VALUES ( 'Hackers', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( '2001: A Space Odyssey', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'Ghostbusters', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'Star Wars Episode IV: A New Hope', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'Wall-E', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'The Matrix', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'Back To The Future', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'The Blues Brothers', '2022-02-20 11:55:37' );
    INSERT INTO movie ( title, acquired ) VALUES ( 'Total Recall', '2022-02-20 11:55:37' );


    INSERT INTO person ( first, middle, last ) VALUES ( 'Angelina', NULL, 'Jolie' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Stanley', NULL, 'Kubrick' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Keir', NULL, 'Dullea' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Bill', NULL, 'Murray' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Dan', NULL, 'Aykroyd' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Mark', NULL, 'Hamill' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Ben', NULL, 'Burtt' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Keanu', NULL, 'Reeves' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Michael', 'J', 'Fox' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Jeff', NULL, 'Bridges' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Arnold', NULL, 'Schwarzenegger' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Iain', NULL, 'Softley' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Ivan', NULL, 'Reitman' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'George', NULL, 'Lucas' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Andrew', NULL, 'Stanton' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Andy', NULL, 'Wachowski' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Lana', NULL, 'Wachowski' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Robert', NULL, 'Zemeckis' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'John', NULL, 'Landis' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Steven', NULL, 'Lisberger' );
    INSERT INTO person ( first, middle, last ) VALUES ( 'Paul', NULL, 'Verhoeven' );    

Second way to do it:

    INSERT INTO movie ( title, acquired ) VALUES ( 'Hackers', '2022-02-20 11:55:37' ), 
    ( '2001: A Space Odyssey', '2022-02-20 11:55:37' ), ( 'Ghostbusters', '2022-02-20 11:55:37' ), 
    ( 'Star Wars Episode IV: A New Hope', '2022-02-20 11:55:37' ),
    ( 'Wall-E', '2022-02-20 11:55:37' ), ( 'The Matrix', '2022-02-20 11:55:37' ), 
    ( 'Back To The Future', '2022-02-20 11:55:37' ), ( 'The Blues Brothers', '2022-02-20 11:55:37' ), 
    ( 'Tron', '2022-02-20 11:55:37' ), ( 'Total Recall', '2022-02-20 11:55:37' );

    INSERT INTO person ( first, middle, last ) VALUES ( 'Angelina', NULL, 'Jolie' ), 
    ( 'Stanley', NULL, 'Kubrick' ), ( 'Keir', NULL, 'Dullea' ), ( 'Bill', NULL, 'Murray' ), 
    ( 'Dan', NULL, 'Aykroyd' ), ( 'Mark', NULL, 'Hamill' ), ( 'Ben', NULL, 'Burtt' ), ( 'Keanu', NULL, 'Reeves' ), 
    ( 'Michael', 'J', 'Fox' ), ( 'Jeff', NULL, 'Bridges' ), ( 'Arnold', NULL, 'Schwarzenegger' ), 
    ( 'Iain', NULL, 'Softley' ), ( 'Ivan', NULL, 'Reitman' ), ( 'George', NULL, 'Lucas' ), 
    ( 'Andrew', NULL, 'Stanton' ), ( 'Andy', NULL, 'Wachowski' ), ( 'Lana', NULL, 'Wachowski' ), 
    ( 'Robert', NULL, 'Zemeckis' ), ( 'John', NULL, 'Landis' ), ( 'Steven', NULL, 'Lisberger' ), 
    ( 'Paul', NULL, 'Verhoeven' );

[![continue](./images/back.jpeg)](./5_INSERT_and_SOURCE.md)
