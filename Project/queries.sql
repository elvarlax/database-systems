USE football;
#----------------------------SECTION 7------------------------------------------

#----------------------------EXAMPLE 1------------------------------------------
WITH all_games AS (
SELECT name,
CASE WHEN (score = 0) THEN count(*) ELSE 0 END AS draw,
CASE WHEN (score = 1) THEN count(*) ELSE 0 END AS won,
CASE WHEN (score = 2) THEN count(*) ELSE 0 END AS lost
FROM game as gm 
JOIN club AS cb ON gm.home = cb.idclub
WHERE season_id=2
GROUP BY name, score
)
SELECT name, SUM(draw) AS draw, SUM(won) AS won, SUM(lost) AS lost
FROM all_games
GROUP BY name
ORDER BY won DESC;
#----------------------------EXAMPLE 2------------------------------------------
SELECT p.name, p.nationality, l.name
FROM club c
INNER JOIN squad s ON c.idclub = club_id
INNER JOIN player p ON p.idplayer = player_id
INNER JOIN league l on l.idleague = c.league_id
WHERE c.name = "Chelsea"
GROUP BY p.name, p.nationality
ORDER BY p.nationality;
#----------------------------EXAMPLE 3------------------------------------------
SELECT c.name, s.name, s.capacity
FROM stadium s
INNER JOIN club c ON c.stadium_id = s.idstadium
GROUP BY s.name, s.capacity
ORDER BY s.name;

UPDATE football.referee
SET name = 'Mikkel Hansen', nationality= 'Denmark'
WHERE idreferee = 1;

#----------------------------SECTION 8------------------------------------------

#-----------------------------UPDATE--------------------------------------------
UPDATE football.referee
SET name = 'Mikkel Hansen', nationality= 'Denmark'
WHERE idreferee = 1;
#-----------------------------DELETE--------------------------------------------
DELETE FROM football.game
WHERE idgame = 1;

#----------------------------SECTION 9------------------------------------------

#----------------------------FUNCTION-------------------------------------------
DELIMITER //
CREATE FUNCTION Goals(vGoals INTEGER) RETURNS INT
BEGIN
	DECLARE vTotalGoals INT;
	SELECT sum(goals) AS goals_scored INTO vTotalGoals
		FROM (
    	SELECT SUM(score_home) goals FROM game WHERE home = vGoals
    	UNION ALL
    	SELECT SUM(score_away) goals FROM game WHERE away = vGoals
		) a ;
	RETURN vTotalGoals;
END//
DELIMITER ;

# EXAMPLE
SELECT DISTINCT home, Goals(home) AS goals_scored FROM game
#----------------------------PROCEDURE------------------------------------------
DELIMITER $$
CREATE PROCEDURE club_player (idPlayer INT(11))
BEGIN
    SET @idPlayer = idPlayer;
    SELECT se.name as season, p.name as player, c.name as club
    FROM player p
    INNER JOIN squad s ON idplayer = player_id
    INNER JOIN club c ON idclub = club_id
    INNER JOIN season se ON idseason = season_id
    WHERE p.idplayer = @idPlayer;
END
$$
DELIMITER ;

# EXAMPLE
CALL club_player(1);
#-----------------------------TRIGGER-------------------------------------------
DELIMITER //
CREATE TRIGGER points
AFTER INSERT ON game FOR EACH ROW
BEGIN
    IF NEW.score = 2 THEN UPDATE club SET points = points + 3 WHERE club.idclub = NEW.away;
    ELSEIF NEW.score = 1 THEN UPDATE club SET points = points + 3 WHERE club.idclub = NEW.home;
    ELSEIF NEW.score = 0 THEN UPDATE club SET points = points + 1 WHERE club.idclub = home AND club.idclub = NEW.away;
    END IF;
END//    
DELIMITER ;
#------------------------------EVENT--------------------------------------------
CREATE EVENT backup
ON SCHEDULE EVERY 1 HOUR
DO SELECT * INTO OUTFILE 'club.csv' FROM football.club;