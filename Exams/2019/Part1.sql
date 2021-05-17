/* Question 1.1:
State an SQL query that returns for each researcher, her/his unique id, name
and number of articles he/she has co-authored. */
SELECT rid, rname, COUNT(aid)
FROM Researcher
NATURAL LEFT JOIN Authors
GROUP BY rid;

/* Question 1.2:
State an SQL query that returns for each Danish institution (having employees),
the unique ids and names of the researchers employed at that institution. */
SELECT rid, rname, iname
FROM Researcher
NATURAL JOIN Institution
WHERE country = 'DK';

/* Question 1.3:
State an SQL query that finds the names of those projects that do not have any participants. */
# NOT IN
SELECT pname
FROM Project
WHERE pname NOT IN (SELECT pname FROM Participates);

# LEFT JOIN
SELECT P.pname
FROM Project P
NATURAL LEFT JOIN Participates PA
WHERE PA.pname IS NULL;

# NOT EXISTS
SELECT pname
FROM Project P
WHERE NOT EXISTS (SELECT NULL FROM Participates PA WHERE PA.pname = P.pname)

/* Question 1.4:
Define an SQL function named numCoauthored, 
that with the unique ids of two researchers (of type INT(3)) as argument, 
will return the number of articles co-authored by the two researchers. */
# rid = rid1 AND aid IN
DELIMITER //
CREATE FUNCTION numCoauthored1 (rid1 INT(3), rid2 INT(3)) RETURNS INT
BEGIN
	DECLARE numArticlesCoauthored INT;
    SELECT COUNT(*) INTO numArticlesCoauthored 
    FROM Authors
    WHERE rid = rid1 AND aid IN (SELECT aid FROM Authors WHERE rid = rid2);
    RETURN numArticlesCoauthored;
END //
DELIMITER ;

# JOIN AuthorsB USING (aid)
DELIMITER //
CREATE FUNCTION numCoauthored2 (rid1 INT(3), rid2 INT(3)) RETURNS INT
BEGIN
	DECLARE numArticlesCoauthored INT;
	SELECT COUNT(*) INTO numArticlesCoauthored
    FROM Authors AS AuthorsA 
    JOIN Authors AS AuthorsB USING (aid) 
    WHERE AuthorsA.rid = rid1 AND AuthorsB.rid = rid2;
    RETURN numArticlesCoauthored;
END //
DELIMITER ;

/* Question 1.5:
State an SQL statement that uses the function to find the number of articles
co-authored by the two researchers with numbers 1 and 3. */

SELECT numCoauthored1(1, 3);
SELECT numCoauthored2(1, 3);