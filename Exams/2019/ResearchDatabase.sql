CREATE DATABASE ResearchDatabase;
USE ResearchDatabase;

CREATE TABLE Institution (
    iname VARCHAR(5),
    country VARCHAR(2),
    PRIMARY KEY (iname)
);

INSERT INTO Institution VALUES 
('DTU', 'DK'), 
('Uni1', 'US'), 
('USUni', 'US'), 
('SUni', 'E');

CREATE TABLE Researcher (
    rid INT,
    rname VARCHAR(5),
    iname VARCHAR(5),
    PRIMARY KEY (rid)
);

INSERT INTO Researcher VALUES 
(1, 'Anne', 'DTU'), 
(2, 'Peter', 'Uni1'), 
(3, 'Signe', 'DTU'), 
(4, 'Jan', 'USUni');

CREATE TABLE Article (
    aid INT,
    aname VARCHAR(30),
    year YEAR,
    PRIMARY KEY (aid)
);

INSERT INTO Article VALUES 
(1, 'Modern Database Systems', 2019), 
(2, 'Formal Methods in Practice', 2018), 
(3, 'Tools of the Future', 2018);

CREATE TABLE Authors (
    aid INT,
	rid INT,
    PRIMARY KEY (aid, rid),
	FOREIGN KEY (aid) REFERENCES Article(aid),
	FOREIGN KEY (rid) REFERENCES Researcher(rid)
);

INSERT INTO Authors VALUES 
(1, 1), 
(2, 1), 
(2, 3), 
(3, 4);

CREATE TABLE Project (
    pname VARCHAR(12),
    iname VARCHAR(5),
    PRIMARY KEY (pname)
);

INSERT INTO Project VALUES 
('NextDB', 'DTU'), 
('RobustRailS', 'DTU'), 
('AIfuture', 'USUni');

CREATE TABLE Participates (
    pname VARCHAR(12),
    rid INT,
    PRIMARY KEY (pname, rid),
    FOREIGN KEY (pname) REFERENCES Project(pname),
    FOREIGN KEY (rid) REFERENCES Researcher(rid)
);

INSERT INTO Participates VALUES 
('AIfuture', 1), 
('AIfuture', 4), 
('RobustRailS', 1), 
('RobustRailS', 2);