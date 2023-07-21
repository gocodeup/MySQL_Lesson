DROP DATABASE IF EXISTS MovieCollection;
CREATE DATABASE MovieCollection;
USE MovieCollection

CREATE TABLE movie (
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    PRIMARY KEY ( id ),
    title           VARCHAR(50) NOT NULL,
    acquired        DATETIME,
    borrow_id       INT
);

CREATE TABLE person (
    id              INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    PRIMARY KEY ( id ),
    first           VARCHAR(20) NOT NULL,
    middle          VARCHAR(20),
    last            VARCHAR(20),
    suffix          VARCHAR(20)
);

INSERT INTO movie VALUES ( 1, 'Hackers', NOW(), NULL );
INSERT INTO movie VALUES ( 2, '2001: A Space Odyssey', NOW(), NULL );
INSERT INTO movie VALUES ( 3, 'Ghostbusters', NOW(), NULL );
INSERT INTO movie VALUES ( 4, 'Star Wars Episode IV: A New Hope', NOW(), NULL );
INSERT INTO movie VALUES ( 5, 'Wall-E', NOW(), NULL );
INSERT INTO movie VALUES ( 6, 'The Matrix', NOW(), NULL );
INSERT INTO movie VALUES ( 7, 'Back To The Future', NOW(), NULL );
INSERT INTO movie VALUES ( 8, 'The Blues Brothers', NOW(), NULL );
INSERT INTO movie VALUES ( 9, 'Tron', NOW(), NULL );
INSERT INTO movie VALUES ( 10, 'Total Recall', NOW(), NULL );

INSERT INTO person VALUES ( 1, 'Angelina', NULL, 'Jolie', NULL );
INSERT INTO person VALUES ( 2, 'Stanley', NULL, 'Kubrick', NULL );
INSERT INTO person VALUES ( 3, 'Keir', NULL, 'Dullea', NULL );
INSERT INTO person VALUES ( 4, 'Bill', NULL, 'Murray', NULL );
INSERT INTO person VALUES ( 5, 'Dan', NULL, 'Aykroyd', NULL );
INSERT INTO person VALUES ( 6, 'Mark', NULL, 'Hamill', NULL );
INSERT INTO person VALUES ( 7, 'Ben', NULL, 'Burtt', NULL );
INSERT INTO person VALUES ( 8, 'Keanu', NULL, 'Reeves', NULL );
INSERT INTO person VALUES ( 9, 'Michael', 'J', 'Fox', NULL );
INSERT INTO person VALUES ( 10, 'Jeff', NULL, 'Bridges', NULL );
INSERT INTO person VALUES ( 11, 'Arnold', NULL, 'Schwarzenegger', NULL );
INSERT INTO person VALUES ( 12, 'Iain', NULL, 'Softley', NULL );
INSERT INTO person VALUES ( 13, 'Ivan', NULL, 'Reitman', NULL );
INSERT INTO person VALUES ( 14, 'George', NULL, 'Lucas', NULL );
INSERT INTO person VALUES ( 15, 'Andrew', NULL, 'Stanton', NULL );
INSERT INTO person VALUES ( 16, 'Andy', NULL, 'Wachowski', NULL );
INSERT INTO person VALUES ( 17, 'Lana', NULL, 'Wachowski', NULL );
INSERT INTO person VALUES ( 18, 'Robert', NULL, 'Zemeckis', NULL );
INSERT INTO person VALUES ( 19, 'John', NULL, 'Landis', NULL );
INSERT INTO person VALUES ( 20, 'Steven', NULL, 'Lisberger', NULL );
INSERT INTO person VALUES ( 21, 'Paul', NULL, 'Verhoeven', NULL );
