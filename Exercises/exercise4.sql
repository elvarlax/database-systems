/* 5. Advanced SQL */

USE UniversityDB;

/* 5.2.1 Create a Function
	Create a function named BuildingCapacityFct which
	takes as input a Building and returns the capacity of the building.
	Test the function (i.e. execute an SQL command
	containing a function call of that function). */
DELIMITER //
CREATE FUNCTION BuildingCapacityFct(vBuilding VARCHAR(15)) RETURNS INT
BEGIN
	DECLARE buildingCapacity INT;
	SELECT SUM(Capacity) INTO buildingCapacity
	FROM Classroom
	WHERE Building = vBuilding;
	RETURN buildingCapacity;
END //
DELIMITER ;

SELECT BuildingCapacityFct('Watson');

SELECT * FROM Classroom;

SELECT * FROM Classroom
WHERE Capacity > BuildingCapacityFct('Watson');

/* 5.2.2 Procedure with Error Signalling
	State informally constraints (besides the
	primary constraint) that should hold for
	the TimeSlot table. Check it with your teaching
	assistant before continuing.
	Create a procedure InsertTimeSlot for inserting
	a row into the TimeSlot table. It should signal an
	error in case the insertion of the new tuple leads
	to a violation of the constraints. (The procedure
	should not check whether the constraints
	already hold before the insertion.) To make the
	procedure more readable, it is advisable to
	define one or several auxiliary functions to
	express the error conditions.
	Test systematically the auxiliary functions and procedure. */
CREATE FUNCTION TimeOverlap(
vDayCode1 ENUM('M','T','W','R','F','S','U'), vStartTime1 TIME, vEndTime1 TIME,
vDayCode2 ENUM('M','T','W','R','F','S','U'), vStartTime2 TIME, vEndTime2 TIME)
RETURNS BOOLEAN
RETURN vDayCode1 = vDayCode2 
AND ((vstartTime1 <= vStartTime2 AND vStartTime2 <= vEndTime1) 
OR (vstartTime2 <= vStartTime1 AND vStartTime1 <= vEndTime2));

#testing TimeOverlap function:
# different start
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'T', '08:00:00', '08:50:00'); #should return 0
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '09:00:00', '09:50:00'); #should return 0

# same start
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '08:00:00', '08:40:00'); #should return 1
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '08:00:00', '08:40:00'); #should return 1

# first starts before second on the same day
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '08:10:00', '08:40:00'); #should return 1
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '08:10:00', '08:50:00'); #should return 1
SELECT TimeOverlap('M', '08:00:00', '08:50:00', 'M', '08:10:00', '09:00:00'); #should return 1

# second starts before first on the same day
SELECT TimeOverlap('M', '08:10:00', '08:40:00', 'M', '08:00:00', '08:50:00'); #should return 1
SELECT TimeOverlap('M', '08:10:00', '08:50:00', 'M', '08:00:00', '08:50:00'); #should return 1
SELECT TimeOverlap('M', '08:10:00', '09:00:00', 'M', '08:00:00', '08:50:00'); #should return 1

CREATE FUNCTION TimeOverlapWithTable(vTimeSlotID VARCHAR(4), 
vDayCode ENUM('M','T','W','R','F','S','U'), vStartTime TIME, vEndTime TIME)
RETURNS BOOLEAN
RETURN EXISTS (
SELECT * FROM TimeSlot
WHERE TimeSlotID = vTimeSlotID 
AND TimeOverlap(vDayCode, vStartTime, vEndTime, DayCode, StartTime, EndTime));

SELECT timeoverlapWithTable('A', 'M', '08:10:00', '08:40:00'); #should return 1
SELECT timeoverlapWithTable('A', 'M', '09:00:00', '09:50:00'); #should return 0
SELECT timeoverlapWithTable('A', 'T', '08:00:00', '08:50:00'); #should return 0

DELIMITER //
CREATE PROCEDURE InsertTimeSlot
(IN vTimeSlotID VARCHAR(4),
IN vDayCode ENUM('M','T','W','R','F','S','U'),
IN vStartTime TIME, IN vEndTime TIME)
BEGIN
	IF vEndTime <= vStartTime THEN
        SIGNAL SQLSTATE 'HY000'
		SET MYSQL_ERRNO = 1525, 
        MESSAGE_TEXT = 'EndTime is equal to or after StartTime';
    ELSEIF TimeOverlapWithTable(vTimeSlotID, vDayCode, vStartTime, vEndTime) THEN
        SIGNAL SQLSTATE 'HY000'
        SET MYSQL_ERRNO = 1525, 
        MESSAGE_TEXT = 'Time interval overlaps with existing timeinterval for the same TimeSlotID';
    ELSE
        INSERT INTO TimeSlot VALUES (vTimeSlotID, vDayCode, vStartTime, vEndTime);
    END IF;
END //
DELIMITER ;

# Testing procedure
SELECT * FROM TimeSlot;
CALL InsertTimeSlot('A', 'T', '08:50:00', '08:00:00'); 
# should give error message 'EndTime is equal to or after StartTime'

CALL InsertTimeSlot('A', 'M', '08:50:00', '08:00:00'); 
# should give error message 'EndTime is equal to or after StartTime'

CALL InsertTimeSlot('A', 'M', '08:10:00', '08:40:00'); 
# should give error message 'time interval overlaps with existing timeinterval for the same TimeSlotID'

SELECT * FROM TimeSlot; #no changes in TimeSlot
CALL InsertTimeSlot('A', 'T', '08:00:00', '08:50:00'); # is succesfull
SELECT * FROM TimeSlot; #new timeslot is inserted

/* 5.2.3 Trigger with Error Signalling
	Make a trigger TimeSlot_Before_Insert, which
	automatically raises a signal when inserting a
	row into TimeSlot (directly with an INSERT
	without using the InsertTimeSlot procedure), if
	the insertion of the new row leads to a violation
	of the constraints identified in the previous
	exercise. Test the trigger by making INSERTs into TimeSLOT. */


/* 5.2.4 Create an Event of European Roulette
	Design a Gambling Machine which rolls a ball on a
	European Roulette every 10 seconds and stores the Lucky number.
	Create a table called BallRolls with attributes RollNo and LuckyNo.
	Create an event RollBall that executes every 10
	seconds and inserts RollNo (automatically counting from 1) 
	and LuckyNo (i.e. random number between 0 and 36) into the table BallRolls. */
