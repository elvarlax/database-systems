/* 4. Intermediate SQL */

USE UniversityDB;

/* 4.2.1 JOINs
	Display the list of all departments, with the total
	number of instructors in each department. Note:
	Department(DeptName, Building, Budget)
	Instructor(InstID, InstName, DeptName, Salary) */
SELECT DeptName, COUNT(InstID) AS TotalNumberOfInstructors
FROM Department
NATURAL LEFT OUTER JOIN Instructor
GROUP BY DeptName;
	
/* 4.2.2 JOINs
	Display the list of active students, along with titles of
	the courses they take. The list should be sorted by
	the student names */
# USING
SELECT StudName, Title
FROM Student 
NATURAL JOIN Takes
JOIN Course USING (CourseID)
ORDER BY StudName;

# ON
SELECT StudName, Title
FROM Student 
NATURAL JOIN Takes T
JOIN Course C ON C.CourseID = T.CourseID
ORDER BY StudName;

/* 4.2.3 Referential Actions
	Consider the CREATE TABLE commands for the
	university database in the appendix. Discuss why the
	referential ON DELETE actions have been chosen as they are. */
/*
ON DELETE CASCADE has been chosen for foreign keys in relations R,
When the existance of tuples in R depend on the existance of a matching
tuple in the referenced relation R`. With only one exception, this has been 
the case when the foreign is part of the primary key of R.
The exception is the PreReqID of the PreReq relation for which it has
been chosen to have no referential action as it should not be allowed
to remove a prerequisite of a course.
*/

/* Consider the database instance in the appendix.
	Which table(s) are changed by the following
	command:
	DELETE FROM COURSE WHERE CourseID = 'BIO-301';
	Hint: First answer this without using your SQL DBMS.
	Afterwards, you can check your answer by executing the command. */
/* 
In the following tables, rows containing BIO-301 as CourseID, have been deleted:
Course, PreReq, Section, Teaches, and Takes. Deletions in the last four tables are due to
ON DELETE CASCADE actions. You can check this with the commands: 
*/

SELECT * FROM Course;
SELECT * FROM PreReq;
SELECT * FROM Section;
SELECT * FROM Teaches;
SELECT * FROM Takes;

/* 4.2.4 Create a View
	Called SeniorInstructors(InstID, InstName, DeptName)
	of instructors with a salary > 80000
	Note: Instructor(InstID, InstName, DeptName, Salary) */
CREATE VIEW SeniorInstructors AS
SELECT InstID, InstName, DeptName
FROM Instructor
WHERE Salary > 80000;
	
/* 4.2.5 Authorization
	Connect as Database Administrator (root) and create
	the users Karen, Linda and Susan with the generic password ‘SetPassword’. */
# Login as root (DB Administrator) and type:
CREATE USER 'Karen'@'localhost'
IDENTIFIED BY 'SetPassword';
CREATE USER 'Linda'@'localhost'
IDENTIFIED BY 'SetPassword';
CREATE USER 'Susan'@'localhost'
IDENTIFIED BY 'SetPassword';

SELECT user FROM mysql.user; -- Shows users

/* Then grant SELECT to Karen and ALL to Linda and
	Susan to a database under your DBA control. */
GRANT SELECT ON UniversityDB.* TO 'Karen'@'localhost';
GRANT ALL ON UniversityDB.* TO 'Linda'@'localhost';
GRANT ALL ON UniversityDB.* TO 'Susan'@'localhost';

SHOW GRANTS FOR 'Karen'@'localhost';
SHOW GRANTS FOR 'Linda'@'localhost';
SHOW GRANTS FOR 'Susan'@'localhost';

/* Connect as Karen and change your password to ‘KarenSecret’. */
# When connected as Karen:
SET PASSWORD = PASSWORD('KarenSecret')

/* Try (as Karen) to execute some select statements
	and some table modifications and see what happens. */
# SELECT statements should succeed for Karen,
# but modifications should be denied. Try e.g.

USE UniversityDB;
SELECT * FROM Instructor;
DELETE FROM Instructor WHERE DeptName = 'History';

/* Connect as DBA (root) drop users Karen, Linda and Susan. */
# Connect as root (DB Administrator) and type:
DROP USER 'Karen'@'localhost';
DROP USER 'Linda'@'localhost';
DROP USER 'Susan'@'localhost';

SELECT user FROM mysql.user;