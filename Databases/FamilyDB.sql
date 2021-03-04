CREATE DATABASE IF NOT EXISTS familyDB;
USE familyDB;

CREATE TABLE family
(
    PersonName VARCHAR(40) NOT NULL,
    Birthday   int,
    PRIMARY KEY (PersonName)
);

INSERT INTO family
VALUES ('Henry', 19591006),
       ('Lilly', 19940224);
