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


/* Consider the database instance in the appendix.
	Which table(s) are changed by the following
	command:
	DELETE FROM COURSE WHERE CourseID = 'BIO-301';
	Hint: First answer this without using your SQL DBMS.
	Afterwards, you can check your answer by executing the command. */
	

/* 4.2.4 Create a View
	Called SeniorInstructors(InstID, InstName, DeptName)
	of instructors with a salary > 80000
	Note: Instructor(InstID, InstName, DeptName, Salary) */
	
/* 4.2.5 Authorization
	Connect as Database Administrator (root) and create
	the users Karen, Linda and Susan with the generic password ‘SetPassword’. */


/* Then grant SELECT to Karen and ALL to Linda and
	Susan to a database under your DBA control. */
	
	
/* Connect as Karen and change your password to ‘KarenSecret’. */


/* Try (as Karen) to execute some select statements
	and some table modifications and see what happens. */


/* Connect as DBA (root) drop users Karen, Linda and Susan. */
