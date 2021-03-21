CREATE DATABASE IF NOT EXISTS FamilyDB;
USE FamilyDB;

CREATE TABLE Family
(
    PersonName VARCHAR(40) NOT NULL,
    Birthday   int,
    PRIMARY KEY (PersonName)
);

INSERT INTO Family
VALUES ('Henry', 19591006),
       ('Lilly', 19940224);
