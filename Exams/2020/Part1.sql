/* Question 1.1:
State an SQL query, which returns a table containing the hotelNo of each hotel having a family room. */
SELECT hotelNo
FROM Hotel
NATURAL JOIN Room
WHERE roomType = 'Family';

/* Question 1.2:
State an SQL query, which returns a table containing the guestNo and guestName of each guest who has an unpaid booking. */
SELECT DISTINCT guestNo, guestName
FROM Guest
NATURAL JOIN Booking
WHERE isPaid = 0;

/* Question 1.3:
State an SQL query, which returns a table containing the hotelNo and roomNo of each room 
that is not booked on the night '2021-08-10'. */
(SELECT hotelNo, roomNo FROM Room)
EXECPT
(SELECT hotelNo, roomNo FROM Booking WHERE night = '2021-08-10')

/* Question 1.4:
Define an SQL view (virtual table) named NumberOfRooms, which for each hotel
has a row giving its hotelNo, hotelName, city, and number of rooms. */
CREATE VIEW NumberOfRooms AS
SELECT hotelNo, hotelName, city, COUNT(roomNo) AS numRooms
FROM Hotel
NATURAL LEFT JOIN Room
GROUP BY hotelNo;

/* Question 1.5:
State an SQL query, which uses the view to return a table, which for each hotel, 
that is not located in Copenhagen city, has a row giving its hotelNo, hotelName, city, and number of rooms. */
SELECT *
FROM NumberOfRooms
WHERE city != 'Copenhagen';