CREATE DATABASE football;
USE football;

CREATE TABLE `league` (

  `idleague` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idleague`)
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `referee` (

  `idreferee` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  PRIMARY KEY (`idreferee`)
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `club` (

  `idclub` int(11) NOT NULL AUTO_INCREMENT,
  `league_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `founded` int(11) NOT NULL,
  `manager` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`idclub`),
  KEY `club_has_league` (`league_id`),
  KEY `club_has_stadium` (`stadium_id`),
  CONSTRAINT `club_has_league` FOREIGN KEY (`league_id`) REFERENCES `league` (`idleague`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `club_has_stadium` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`idstadium`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `season` (

  `idseason` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idseason`)
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `player` (

  `idplayer` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `nationality` varchar(45) NOT NULL,
  PRIMARY KEY (`idplayer`),
  KEY `player_has_position` (`position_id`),
  CONSTRAINT `player_has_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`idposition`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `game` (

  `idgame` int(11) NOT NULL AUTO_INCREMENT,
  `referee_id` int(11) NOT NULL,
  `home` int(11) NOT NULL,
  `away` int(11) NOT NULL,
  `score_home` int(11) NOT NULL,
  `score_away` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`idgame`),
  KEY `game_has_referee` (`referee_id`),
  KEY `game.away_has_club` (`away`),
  KEY `game.home_has_club` (`home`),
  CONSTRAINT `game.away_has_club` FOREIGN KEY (`away`) REFERENCES `club` (`idclub`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `game.home_has_club` FOREIGN KEY (`home`) REFERENCES `club` (`idclub`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `game_has_referee` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`idreferee`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `squad` (

  `idsquad` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `loan` tinyint(1) NOT NULL,
  PRIMARY KEY (`idsquad`),
  KEY `squad_has_club` (`club_id`),
  KEY `squad_has_player` (`player_id`),
  KEY `squad_has_season` (`season_id`),
  CONSTRAINT `squad_has_club` FOREIGN KEY (`club_id`) REFERENCES `club` (`idclub`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `squad_has_player` FOREIGN KEY (`player_id`) REFERENCES `player` (`idplayer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `squad_has_season` FOREIGN KEY (`season_id`) REFERENCES `season` (`idseason`) ON DELETE NO ACTION ON UPDATE NO ACTION
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `stadium` (

  `idstadium` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`idstadium`)
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE `position` (

  `idposition` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idposition`)
  
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;