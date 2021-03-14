/* 3. Introductory SQL 2 */

/* 3.2.1 SELECT with MAX aggregation
	Find the highest salary of any instructor: */


/* 3.2.2 Scalar Subquery
	Find ID and Name of all instructors earning the
	highest salary. There might be more than one with
	the same salary: */


/* 3.2.3 DELETE using IN
	Delete courses BIO-101 and BIO-301 in the Takes table: */


/* After this question run the UniversityDB script to restore tables to initial instances. */


/* 3.2.4 Advanced WHERE condition using NOT IN
	Find those students who have not taken a course. */


/* 3.2.5 Advanced WHERE condition using ALL
	Find the name(s) of those department(s) which
	have the highest budget, i.e. a budget which is
	higher than or equal to those for all other departments: */


/* 3.2.6 Advanced WHERE condition using SOME */
/*  Find the names of those students who have the
	same name as some instructor. Use the SOME
	operator for this: */
	
	
/* Make another statement querying the same, but
	without using SOME: */
	

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


/* 3.2.8 Find the Total Grade-Points
	earned by each student who have taken a course.
	Hint: use GROUP BY. */


/* 3.2.9 Find the Total Grade-Points Average
	(GPA) for each student who has taken a course,
	that is, the total grade-points divided by the total
	credits for the associated courses. Order the
	students by falling averages. Hint: use GROUP BY. */


/* 3.2.10 Query using UNION
	Now modify the queries from the two previous
	questions such that students who have not taken a
	course are also included.
	Hint: use the UNION operator. */


/* 3.2.11 Testscores example.
	Create a relation schema Testscores (by a table
	declaration) and insert values such that
	SELECT * FROM Testscores; gives: */

/* Then find the maximal score for each student who has an average larger than 49. */
