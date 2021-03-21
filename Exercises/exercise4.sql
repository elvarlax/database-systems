/* 5. Advanced SQL */

USE UniversityDB;

/* 5.2.1 Create a Function
	Create a function named BuildingCapacityFct which
	takes as input a Building and returns the capacity of the building.
	Test the function (i.e. execute an SQL command
	containing a function call of that function). */


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
