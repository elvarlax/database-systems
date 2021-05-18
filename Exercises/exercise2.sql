/* 3. Introductory SQL 2 */

USE UniversityDB;

/* 3.2.1 SELECT with MAX aggregation
	Find the highest salary of any instructor: */
SELECT MAX(Salary)
FROM Instructor;

/* 3.2.2 Scalar Subquery
	Find ID and Name of all instructors earning the
	highest salary. There might be more than one with
	the same salary: */
SELECT InstID, InstName
FROM Instructor
WHERE Salary IN (SELECT MAX(Salary) FROM Instructor);

/* 3.2.3 DELETE using IN
	Delete courses BIO-101 and BIO-301 in the Takes table: */
DELETE FROM Takes
WHERE CourseID = 'BIO-101' OR CourseID = 'BIO-301';

/* After this question run the UniversityDB script to restore tables to initial instances. */

/* 3.2.4 Advanced WHERE condition using NOT IN
	Find those students who have not taken a course. */
SELECT StudID
FROM Student
WHERE StudID NOT IN (SELECT StudID FROM Takes);

/* 3.2.5 Advanced WHERE condition using ALL
	Find the name(s) of those department(s) which
	have the highest budget, i.e. a budget which is
	higher than or equal to those for all other departments: */
SELECT DeptName
FROM Department
WHERE Budget >= ALL (SELECT Budget FROM Department);

/* 3.2.6 Advanced WHERE condition using SOME */
/*  Find the names of those students who have the
	same name as some instructor. Use the SOME
	operator for this: */
SELECT StudName
FROM Student
WHERE StudName = SOME (SELECT InstName FROM Instructor);
	
/* Make another statement querying the same, but
	without using SOME: */
# IN
SELECT StudName
FROM Student
WHERE StudName IN (SELECT InstName FROM Instructor);

# CARTESIAN PRODUCT
SELECT StudName
FROM Student, Instructor
WHERE StudName = InstName;

/* 3.2.7 Create and populate table
	GradePoints(Grade, Points) to provide a
	conversion from letter grades to numeric scores
	such that SELECT * FROM GradePoints; gives:
	
	A  4.0
	A- 3.7
	B  3.0
	B+ 3.3
	B- 2.7
	C  2.0
	C+ 2.3
	C- 1.7
	F  0.0
	
	This shows that an “A” corresponds to 4 points, an “A-“ to 3.7 points, and so on. */
CREATE TABLE GradePoints (
	Grade VARCHAR(2),
	Points DECIMAL(3, 1),
	PRIMARY KEY (Grade),
	FOREIGN KEY (Grade) REFERENCES Takes(Grade)
);

INSERT INTO GradePoints VALUES
('A', 4.0), ('A-', 3.7), ('B+', 3.3), 
('B', 3.0), ('B-', 2.7), ('C+', 2.3), 
('C', 2.0), ('C-', 1.7), ('D+', 1.3), 
('D', 1.0), ('D-', 0.7), ('F', 0.0);

/* 3.2.8 Find the Total Grade-Points
	earned by each student who have taken a course.
	Hint: use GROUP BY. */
SELECT StudID, SUM(Credits * Points) AS TotalGradePoints
FROM Takes NATURAL JOIN Course
NATURAL JOIN GradePoints
GROUP BY StudID;

/* 3.2.9 Find the Total Grade-Points Average
	(GPA) for each student who has taken a course,
	that is, the total grade-points divided by the total
	credits for the associated courses. Order the
	students by falling averages. Hint: use GROUP BY. */
SELECT StudID, SUM(Credits * Points) / SUM(Credits) AS GPA
FROM Takes NATURAL JOIN Course
NATURAL JOIN GradePoints
GROUP BY StudID;

/* 3.2.10 Query using UNION
	Now modify the queries from the two previous
	questions such that students who have not taken a
	course are also included.
	Hint: use the UNION operator. */
SELECT StudID, SUM(Credits * Points) / SUM(Credits) AS GPA
FROM Takes NATURAL JOIN Course
NATURAL JOIN GradePoints
GROUP BY StudID
UNION
SELECT StudID, 0 AS GPA
FROM Student
WHERE StudID NOT IN (SELECT StudID FROM Takes)
GROUP BY StudID;

/* 3.2.11 Testscores example.
	Create a relation schema Testscores (by a table
	declaration) and insert values such that
	SELECT * FROM Testscores; gives: */
CREATE TABLE Testscores (
	Student VARCHAR(20) NOT NULL,
	Test VARCHAR(20) NOT NULL,
	Score INT,
	PRIMARY KEY (Student, Test)
);

INSERT INTO Testscores VALUES
('Brandt', 'A', 47), ('Brandt', 'B', 50),
('Brandt', 'C', NULL), ('Brandt', 'D', NULL),
('Chavez', 'A', 52), ('Chavez', 'B', 45),
('Chavez', 'C', 53), ('Chavez', 'D', NULL);

SELECT * FROM Testscores;

/* Then find the maximal score for each student who has an average larger than 49. */
SELECT Student, MAX(Score)
FROM Testscores
GROUP BY Student HAVING AVG(Score) > 49;