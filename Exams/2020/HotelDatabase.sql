CREATE DATABASE HotelDatabase;
USE HotelDatabase;

CREATE TABLE Hotel (
    hotelNo VARCHAR(4),
    hotelName VARCHAR(15),
    city VARCHAR(15),
    PRIMARY KEY (hotelNo)
);

INSERT Hotel (hotelNo, hotelName, city) VALUES ('H002', 'Grand Hotel', 'London');
INSERT Hotel (hotelNo, hotelName, city) VALUES ('H003', 'Sanslits', 'Paris');
INSERT Hotel (hotelNo, hotelName, city) VALUES ('H005', 'City Hotel', 'London');
INSERT Hotel (hotelNo, hotelName, city) VALUES ('H011', 'Palads', 'Copenhagen');
INSERT Hotel (hotelNo, hotelName, city) VALUES ('H012', 'Piazza Hotel', 'Rome');

CREATE TABLE Room (
    hotelNo VARCHAR(4),
    roomNo VARCHAR(3),
    roomType ENUM('Single', 'Double', 'Family'),
    price INT,
    PRIMARY KEY (hotelNo, roomNo),
    FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);

INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H002', '113', 'Family', 80);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H002', '200', 'Double', 50);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H005', '214', 'Double', 100);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H005', '215', 'Single', 75);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H005', '216', 'Family', 120);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H011', '214', 'Double', 90);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H011', '215', 'Double', 90);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H011', '216', 'Single', 89);
INSERT Room (hotelNo, roomNo, roomType, price) VALUES ('H012', '101', 'Single', 83);

CREATE TABLE Guest (
    guestNo VARCHAR(4),
    guestName VARCHAR(15),
    guestAddress VARCHAR(25),
    PRIMARY KEY (guestNo)
);

INSERT Guest (guestNo, guestName, guestAddress) VALUES ('G221', 'Peter Schmidt', 'Lake Str. 5, Holte');
INSERT Guest (guestNo, guestName, guestAddress) VALUES ('G324', 'Anders Jensen', 'High Str. 1, Lyngby');
INSERT Guest (guestNo, guestName, guestAddress) VALUES ('G329', 'Mary Hanson', 'Castle Blv. 2, Sorgenfri');

CREATE TABLE Booking (
    hotelNo VARCHAR(4),
    roomNo VARCHAR(3),
    night DATE,
    guestNo VARCHAR(4),
    isPaid BOOLEAN,
    FOREIGN KEY (hotelNo, roomNo) REFERENCES Room(hotelNo, roomNo)
);

INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H002', '113', '2021-06-01', 'G324', 0);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H002', '113', '2021-06-02', 'G324', 0);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H005', '214', '2021-02-02', 'G324', 1);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H005', '214', '2021-03-12', 'G324', 0);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H005', '216', '2021-07-07', 'G221', 0);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H011', '214', '2021-04-22', 'G324', 1);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H011', '214', '2021-08-10', 'G221', 1);
INSERT Booking (hotelNo, roomNo, night, guestNo, isPaid) VALUES ('H011', '215', '2021-08-10', 'G221', 1);