CREATE DATABASE HotelDatabase;
USE HotelDatabase;

CREATE TABLE Hotel (
	hotelNo VARCHAR(4),
	hotelName VARCHAR(15),
	city VARCHAR(15),
	PRIMARY KEY (hotelNo)
);

INSERT INTO Hotel VALUES ('H002', 'Grand Hotel', 'London');
INSERT INTO Hotel VALUES ('H003', 'Sanslits', 'Paris');
INSERT INTO Hotel VALUES ('H005', 'City Hotel', 'London');
INSERT INTO Hotel VALUES ('H011', 'Palads', 'Copenhagen');
INSERT INTO Hotel VALUES ('H012', 'Piazza Hotel', 'Rome');

CREATE TABLE Guest (
	guestNo VARCHAR(4),
	guestName VARCHAR(15),
	guestAddress VARCHAR(25),
	PRIMARY KEY (guestNo)
);

INSERT INTO Guest VALUES ('G221', 'Peter Schmidt', 'Lake Str. 5, Holte');
INSERT INTO Guest VALUES ('G324', 'Anders Jensen', 'High Str. 1, Lyngby');
INSERT INTO Guest VALUES ('G329', 'Mary Hanson', 'Castle Blv. 2, Sorgenfri');

CREATE TABLE Room (
	hotelNo VARCHAR(4),
	roomNo VARCHAR(3),
	roomType ENUM('Single', 'Double', 'Family'),
	price INT,
	PRIMARY KEY (hotelNo, roomNo),
	FOREIGN KEY (hotelNo) REFERENCES Hotel(hotelNo)
);

INSERT INTO Room VALUES ('H002', '113', 'Family', 80);
INSERT INTO Room VALUES ('H002', '200', 'Double', 50);
INSERT INTO Room VALUES ('H005', '214', 'Double', 100);
INSERT INTO Room VALUES ('H005', '215', 'Single', 75);
INSERT INTO Room VALUES ('H005', '216', 'Family', 120);
INSERT INTO Room VALUES ('H011', '214', 'Double', 90);
INSERT INTO Room VALUES ('H011', '215', 'Double', 90);
INSERT INTO Room VALUES ('H011', '216', 'Single', 89);
INSERT INTO Room VALUES ('H012', '101', 'Single', 83);

CREATE TABLE Booking (
	hotelNo VARCHAR(4),
	roomNo VARCHAR(3),
	night DATE,
	guestNo VARCHAR(4),
	isPaid BOOLEAN,
	FOREIGN KEY (hotelNo, roomNo) REFERENCES Room(hotelNo, roomNo),
	FOREIGN KEY (guestNo) REFERENCES Guest(guestNo)
);

INSERT INTO Booking VALUES ('H002', '113', '2021-06-01', 'G324', 0);
INSERT INTO Booking VALUES ('H002', '113', '2021-06-02', 'G324', 0);
INSERT INTO Booking VALUES ('H005', '214', '2021-02-02', 'G324', 1);
INSERT INTO Booking VALUES ('H005', '214', '2021-03-12', 'G324', 0);
INSERT INTO Booking VALUES ('H005', '216', '2021-07-07', 'G221', 0);
INSERT INTO Booking VALUES ('H011', '214', '2021-04-22', 'G324', 1);
INSERT INTO Booking VALUES ('H011', '214', '2021-08-10', 'G221', 1);
INSERT INTO Booking VALUES ('H011', '215', '2021-08-10', 'G221', 1);