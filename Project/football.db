CREATE DATABASE Football_DB;

GO

USE Football_DB;

CREATE TABLE Championships(ID int IDENTITY (1,1) CONSTRAINT PK_Championships_ID PRIMARY KEY (ID), 
Name nvarchar(255));

CREATE TABLE Countries(ID int IDENTITY (1,1) CONSTRAINT PK_Countries_ID PRIMARY KEY (ID),
Name nvarchar(255));

CREATE TABLE Managers(ID int IDENTITY (1,1) CONSTRAINT PK_Managers_ID PRIMARY KEY (ID),
Name nvarchar(255),
Age int,
CountryID int CONSTRAINT FK_Managers_Countries_ID FOREIGN KEY REFERENCES Countries(ID));

CREATE TABLE Positions(ID int IDENTITY (1,1) CONSTRAINT PK_Positions_ID PRIMARY KEY (ID),
Name nvarchar(255));

CREATE TABLE Teams(ID int IDENTITY (1,1) CONSTRAINT PK_Teams_ID PRIMARY KEY (ID),
Name nvarchar(255),
ChampionshipID int CONSTRAINT FK_Teams_Championships_ID FOREIGN KEY REFERENCES Championships(ID),
ManagerID int CONSTRAINT FK_Teams_Managers_ID FOREIGN KEY REFERENCES Managers(ID),
CountryID int CONSTRAINT FK_Teams_Countries_ID FOREIGN KEY REFERENCES Countries(ID));

CREATE TABLE Footballers(ID int IDENTITY (1,1) CONSTRAINT PK_Footballers_ID PRIMARY KEY (ID),
Name nvarchar(255),
Height int,
Weight int,
Age int,
StrongFoot nvarchar(255),
TeamID int CONSTRAINT FK_Footballers_Teams_ID FOREIGN KEY REFERENCES Teams(ID),
CountryID int CONSTRAINT FK_Footballers_Countries_ID FOREIGN KEY REFERENCES Countries(ID),
PositionID int CONSTRAINT FK_Footballers_Positions_ID FOREIGN KEY REFERENCES Positions(ID));

CREATE TABLE Fixtures(ID int IDENTITY (1,1) CONSTRAINT PK_Fixtures_ID PRIMARY KEY (ID),
HostID int CONSTRAINT FK_Fixtures_HostTeam_Teams_ID FOREIGN KEY REFERENCES Teams(ID),
GuestID int CONSTRAINT FK_Fixtures_GuestTeam_Teams_ID FOREIGN KEY REFERENCES Teams(ID),
CONSTRAINT CHK_Fixtures_Team_Difference CHECK (HostID != GuestID));

CREATE TABLE Goalscorers(ID int IDENTITY (1,1) CONSTRAINT PK_Goalscorers_ID PRIMARY KEY (ID),
FixtureID int CONSTRAINT FK_Goalscorers_Fixtures_ID FOREIGN KEY REFERENCES Fixtures(ID),
FootballerID int CONSTRAINT FK_Goalscorers_Footballers_ID FOREIGN KEY REFERENCES Footballers(ID),
TeamID int CONSTRAINT FK_Goalscorers_Teams_ID FOREIGN KEY REFERENCES Teams(ID),
Goals int);

CREATE UNIQUE INDEX UI_Countries_Name ON Countries(Name);

-- inserting championships
INSERT INTO Championships (Name)
VALUES ('Primera Division');

INSERT INTO Championships (Name)
VALUES ('English Premier League');

INSERT INTO Championships (Name)
VALUES ('Bundesliga');

INSERT INTO Championships (Name)
VALUES ('Serie A');
-- inserting countries
INSERT INTO Countries (Name)
VALUES ('Spain');

INSERT INTO Countries (Name)
VALUES ('France');

INSERT INTO Countries (Name)
VALUES ('Argentina');

INSERT INTO Countries (Name)
VALUES ('Germany');

INSERT INTO Countries (Name)
VALUES ('Norway');

INSERT INTO Countries (Name)
VALUES ('Switzerland');

INSERT INTO Countries (Name)
VALUES ('Italy');

INSERT INTO Countries (Name)
VALUES ('England');

INSERT INTO Countries (Name)
VALUES ('Brazil');

INSERT INTO Countries (Name)
VALUES ('Portugal');

INSERT INTO Countries (Name)
VALUES ('Senegal');

INSERT INTO Countries (Name)
VALUES ('Uruguay');

INSERT INTO Countries (Name)
VALUES ('Croatia');

INSERT INTO Countries (Name)
VALUES ('The Netherlands');

INSERT INTO Countries (Name)
VALUES ('Chile');

INSERT INTO Countries (Name)
VALUES ('Belgium');

INSERT INTO Countries (Name)
VALUES ('Colombia');

INSERT INTO Countries (Name)
VALUES ('Wales');

INSERT INTO Countries (Name)
VALUES ('Serbia');

INSERT INTO Countries (Name)
VALUES ('Slovenia');

INSERT INTO Countries (Name)
VALUES ('Montenegro');

INSERT INTO Countries (Name)
VALUES ('Ghana');

INSERT INTO Countries (Name)
VALUES ('Mexico');

INSERT INTO Countries (Name)
VALUES ('Cameroon');

INSERT INTO Countries (Name)
VALUES ('Scotland');

INSERT INTO Countries (Name)
VALUES ('Guinea');

INSERT INTO Countries (Name)
VALUES ('Egypt');

INSERT INTO Countries (Name)
VALUES ('Sweden');

INSERT INTO Countries (Name)
VALUES ('Ivory Coast');

INSERT INTO Countries (Name)
VALUES ('Ukraine');

INSERT INTO Countries (Name)
VALUES ('Algeria');

INSERT INTO Countries (Name)
VALUES ('Austria');

INSERT INTO Countries (Name)
VALUES ('Poland');

INSERT INTO Countries (Name)
VALUES ('Denmark');

INSERT INTO Countries (Name)
VALUES ('Morocco');

INSERT INTO Countries (Name)
VALUES ('Hungary');

INSERT INTO Countries (Name)
VALUES ('USA');

INSERT INTO Countries (Name)
VALUES ('Mali');

INSERT INTO Countries (Name)
VALUES ('Czech Republic');

INSERT INTO Countries (Name)
VALUES ('Turkey');

INSERT INTO Countries (Name)
VALUES ('Bosnia and Herzegovina');

INSERT INTO Countries (Name)
VALUES ('Greece');

INSERT INTO Countries (Name)
VALUES ('Albania');

INSERT INTO Countries (Name)
VALUES ('Macedonia');

INSERT INTO Countries (Name)
VALUES ('Slovakia');

-- inserting managers
INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Ernesto Valverde',
55,
1);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Zinedine Zidane',
47,
2);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Diego Simeone',
49,
3);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Jurgen Klopp',
52,
4);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Ole Gunnar Solskjaer',
46,
5);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Josep Guardiola',
48,
1);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Hans-Dieter Flick',
54,
4);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Lucien Favre',
62,
6);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Julian Nagelsmann',
32,
4);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Maurizio Sarri',
60,
7);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Carlo Ancelotti',
60,
7);

INSERT INTO Managers (Name,
Age,
CountryID)
VALUES ('Antonio Conte',
50,
7);
-- inserting positions
INSERT INTO Positions(Name)
VALUES ('Goalkeeper');

INSERT INTO Positions(Name)
VALUES ('Defender');

INSERT INTO Positions(Name)
VALUES ('Midfielder');

INSERT INTO Positions(Name)
VALUES ('Striker');
-- inserting teams
INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('FC Barcelona',
1,
1,
1);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Real Madrid CF',
1,
2,
1);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Atletico Madrid',
1,
3,
1);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Liverpool',
2,
4,
8);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Manchester United',
2,
5,
8);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Manchester City',
2,
6,
8);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('FC Bayern Munich',
3,
7,
4);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Borussia Dortmund',
3,
8,
4);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('RB Leipzig',
3,
9,
4);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Juventus',
4,
10,
7);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Napoli',
4,
11,
7);

INSERT INTO Teams (Name,
ChampionshipID,
ManagerID,
CountryID)
VALUES ('Inter Milan',
4,
12,
7);
-- inserting footballers
INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marc-André ter Stegen',
187,
85,
27,
'Right',
1,
4,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Norberto Murara Neto',
189,
83,
30,
'Right',
1,
9,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ignacio Pena',
184,
78,
20,
'Right',
1,
1,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nelson Semedo',
177,
69,
26,
'Right',
1,
10,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gerard Pique',
194,
85,
32,
'Right',
1,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Clement Lenglet',
186,
81,
24,
'Left',
1,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jordi Alba',
170,
68,
30,
'Left',
1,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Samuel Umtiti',
183,
84,
26,
'Left',
1,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Junior Firpo',
184,
78,
23,
'Left',
1,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ronald Araujo',
191,
79,
20,
'Right',
1,
12,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jean-Clair Todibo',
190,
91,
19,
'Right',
1,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ivan Rakitic',
184,
78,
31,
'Right',
1,
13,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Arthur Melo',
171,
73,
23,
'Right',
1,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Carles Alena',
180,
73,
21,
'Left',
1,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sergi Roberto',
178,
70,
27,
'Right',
1,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Frenkie De Jong',
180,
68,
22,
'Right',
1,
14,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Arturo Vidal',
181,
75,
32,
'Right',
1,
15,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ricky Puig',
169,
56,
20,
'Right',
1,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sergio Busquets',
189,
78,
31,
'Right',
1,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ansu Fati',
178,
66,
17,
'Right',
1,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Luis Suarez',
182,
85,
32,
'Right',
1,
12,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lionel Messi',
170,
72,
32,
'Left',
1,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ousmane Dembele',
178,
70,
22,
'Both',
1,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Antoine Griezmann',
175,
72,
28,
'Left',
1,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Carles Perez',
173,
75,
21,
'Left',
1,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thibaut Courtois',
199,
91,
27,
'Left',
2,
16,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alphonse Areola',
195,
95,
26,
'Right',
2,
2,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Daniel Carvajal',
173,
73,
27,
'Right',
2,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Eder Militao',
187,
79,
21,
'Right',
2,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sergio Ramos',
184,
75,
33,
'Right',
2,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Raphael Varane',
191,
79,
26,
'Right',
2,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nacho Fernandez',
180,
77,
29,
'Right',
2,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcelo Vieira',
174,
80,
31,
'Left',
2,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ferland Mendy',
180,
73,
24,
'Left',
2,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alvaro Odriozola',
176,
67,
23,
'Right',
2,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Carlos Henrique Casemiro',
185,
84,
27,
'Right',
2,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Toni Kroos',
183,
78,
29,
'Right',
2,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Luka Modric',
172,
66,
34,
'Right',
2,
13,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Federico Valverde',
182,
73,
21,
'Right',
2,
12,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Isco Alarcon',
176,
74,
27,
'Right',
2,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('James Rodriguez',
180,
75,
28,
'Left',
2,
17,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Brahim Diaz',
171,
68,
20,
'Both',
2,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Eden Hazard',
173,
76,
28,
'Right',
2,
16,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Vinicius Junior',
176,
62,
19,
'Right',
2,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marco Asensio',
182,
76,
23,
'Left',
2,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gareth Bale',
185,
74,
30,
'Left',
2,
18,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Rodrygo Goes',
174,
63,
18,
'Right',
2,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lucas Vasquez',
173,
70,
28,
'Right',
2,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Luka Jovic',
182,
75,
21,
'Both',
2,
19,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Karim Benzema',
185,
79,
32,
'Right',
2,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mariano Diaz',
178,
79,
26,
'Right',
2,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jan Oblak',
189,
84,
26,
'Right',
3,
20,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Antonio Adan',
190,
88,
32,
'Left',
3,
1,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jose Gimenez',
185,
77,
24,
'Right',
3,
12,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Stefan Savic',
186,
79,
28,
'Right',
3,
21,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mario Hermoso',
184,
74,
24,
'Left',
3,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Felipe Monteiro',
191,
84,
30,
'Right',
3,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Renan Lodi',
179,
74,
21,
'Right',
3,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kieran Trippier',
175,
71,
29,
'Right',
3,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sime Vrsaljko',
181,
76,
27,
'Right',
3,
13,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Santiago Arias',
177,
71,
27,
'Right',
3,
17,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thomas Partey',
185,
75,
26,
'Right',
3,
22,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcos Llorente',
184,
69,
24,
'Right',
3,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Saul Niguez',
184,
76,
25,
'Right',
3,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Hector Herrera',
180,
79,
29,
'Right',
3,
23,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Koke Resurreccion',
176,
73,
27,
'Right',
3,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thomas Lemar',
171,
65,
24,
'Left',
3,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Vitolo Perez',
185,
80,
30,
'Right',
3,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Angel Correa',
173,
70,
24,
'Right',
3,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Joao Felix',
180,
64,
20,
'Both',
3,
10,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alvaro Morata',
189,
82,
27,
'Right',
3,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Diego Costa',
186,
86,
31,
'Right',
3,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ivan Saponjic',
192,
82,
22,
'Right',
3,
19,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alisson Becker',
193,
91,
27,
'Right',
4,
9,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Adrian',
190,
80,
32,
'Right',
4,
1,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Virgil Van Dijk',
193,
84,
28,
'Right',
4,
14,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Joe Gomez',
188,
79,
22,
'Right',
4,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Joel Matip',
195,
83,
28,
'Right',
4,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Dejan Lovren',
188,
77,
30,
'Right',
4,
13,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Andrew Robertson',
178,
64,
25,
'Left',
4,
25,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Trent-Alexander Arnold',
175,
66,
21,
'Right',
4,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nathaniel Clyne',
175,
68,
28,
'Right',
4,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fabinho',
188,
79,
26,
'Right',
4,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Georginio Wijnaldum',
175,
65,
29,
'Right',
4,
14,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Naby Keita',
172,
68,
24,
'Right',
4,
26,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jordan Henderson',
187,
80,
29,
'Right',
4,
8,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alex-Oxlade Chamberlain',
180,
71,
26,
'Right',
4,
8,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('James Milner',
175,
70,
33,
'Right',
4,
8,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Adam Lallana',
173,
73,
31,
'Both',
4,
8,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sadio Mane',
175,
71,
27,
'Right',
4,
11,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mohamed Salah',
175,
72,
27,
'Left',
4,
27,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Xherdan Shaqiri',
169,
72,
28,
'Left',
4,
6,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Roberto Firmino',
181,
76,
28,
'Right',
4,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Divock Origi',
185,
70,
24,
'Right',
4,
16,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('David de Gea',
190,
71,
29,
'Right',
5,
1,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sergio Romero',
192,
87,
32,
'Right',
5,
3,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Victor Lindelof',
187,
80,
29,
'Right',
5,
28,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Eric Bailly',
188,
75,
25,
'Right',
5,
29,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Phil Jones',
185,
71,
27,
'Right',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Harry Maguire',
193,
88,
26,
'Right',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcos Rojo',
187,
80,
29,
'Right',
5,
3,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ashley Young',
175,
65,
34,
'Right',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Diogo Dalot',
183,
76,
20,
'Right',
5,
10,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Luke Shaw',
185,
75,
24,
'Left',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Timothy Fosu-Mensah',
190,
78,
21,
'Right',
5,
14,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Aaron Wan-Bissaka',
183,
72,
22,
'Right',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Axel Tuanzebe',
183,
72,
22,
'Right',
5,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Paul Pogba',
190,
88,
26,
'Right',
5,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Juan Mata',
170,
63,
31,
'Left',
5,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Andreas Pereira',
177,
69,
23,
'Right',
5,
16,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fred',
169,
64,
26,
'Left',
5,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nemanja Matic',
194,
86,
31,
'Left',
5,
19,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Scott McTominay',
193,
88,
23,
'Right',
5,
25,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Anthony Martial',
183,
73,
23,
'Right',
5,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Daniel James',
170,
66,
22,
'Right',
5,
18,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mason Greenwood',
181,
70,
18,
'Left',
5,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcus Rashford',
185,
70,
22,
'Right',
5,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jesse Lingard',
175,
65,
26,
'Right',
5,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ederson Moraes',
188,
86,
26,
'Left',
6,
9,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Claudio Bravo',
184,
84,
38,
'Right',
6,
15,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kyle Walker',
178,
72,
29,
'Right',
6,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('John Stones',
188,
85,
25,
'Right',
6,
8,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Aymeric Laporte',
189,
77,
25,
'Left',
6,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Benjamin Mendy',
185,
76,
25,
'Left',
6,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Joao Cancelo',
182,
72,
25,
'Right',
6,
10,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nicolas Otamendi',
184,
84,
31,
'Right',
6,
3,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ilkay Gundogan',
180,
78,
29,
'Right',
6,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Oleksandr Zinchenko',
175,
65,
23,
'Left',
6,
30,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Rodrigo Hernandez',
191,
81,
23,
'Right',
6,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kevin De Bruyne',
180,
68,
28,
'Right',
6,
16,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('David Silva',
170,
67,
33,
'Left',
6,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fernandinho',
176,
70,
34,
'Right',
6,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Phil Foden',
171,
70,
19,
'Left',
6,
8,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Raheem Sterling',
170,
69,
24,
'Right',
6,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Leroy Sane',
184,
75,
23,
'Left',
6,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Bernardo Silva',
173,
62,
25,
'Left',
6,
10,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Riyad Mahrez',
179,
62,
28,
'Left',
6,
31,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gabriel Jesus',
177,
70,
22,
'Right',
6,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sergio Aguero',
173,
66,
31,
'Right',
6,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Manuel Neuer',
193,
93,
33,
'Right',
7,
4,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sven Ulreich',
192,
84,
31,
'Right',
7,
4,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nicklas Sule',
195,
89,
24,
'Right',
7,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Benjamin Pavard',
186,
76,
23,
'Right',
7,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jerome Boateng',
192,
90,
31,
'Right',
7,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lucas Hernandez',
183,
76,
23,
'Left',
7,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('David Alaba',
184,
75,
24,
'Left',
7,
32,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Joshua Kimmich',
176,
72,
24,
'Right',
7,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Javier Martinez',
192,
81,
31,
'Right',
7,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thiago Alcantara',
174,
70,
28,
'Right',
7,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Philippe Coutinho',
172,
68,
27,
'Right',
7,
9,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Leon Goretzka',
189,
76,
24,
'Right',
7,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Corentin Tolisso',
180,
78,
25,
'Right',
7,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kingsley Coman',
178,
71,
23,
'Right',
7,
2,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ivan Perisic',
187,
81,
30,
'Both',
7,
13,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Serge Gnabry',
175,
73,
24,
'Right',
7,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thomas Muller',
186,
74,
30,
'Right',
7,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Robert Lewandowski',
186,
79,
31,
'Right',
7,
33,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Roman Burki',
188,
83,
29,
'Right',
8,
6,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marwin Hitz',
194,
86,
32,
'Right',
8,
6,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Dan-Axel Zagadou',
196,
90,
20,
'Left',
8,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Achraf Hakimi',
181,
73,
21,
'Right',
8,
35,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nico Schulz',
180,
78,
26,
'Left',
8,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mats Hummels',
192,
90,
31,
'Right',
8,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Leonardo Balerdi',
188,
76,
20,
'Right',
8,
3,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mateu Morey',
173,
67,
19,
'Right',
8,
1,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lukasz Piszczek',
184,
79,
34,
'Right',
8,
33,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcel Schmelzer',
181,
74,
31,
'Left',
8,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thomas Delaney',
182,
71,
28,
'Left',
8,
34,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mahmoud Dahoud',
177,
76,
23,
'Right',
8,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marco Reus',
180,
67,
30,
'Right',
8,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Manuel Akanji',
186,
85,
24,
'Right',
8,
6,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Axel Witsel',
188,
73,
30,
'Right',
8,
16,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Tobias Rachl',
177,
75,
19,
'Right',
8,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Raphael Guerreiro',
170,
64,
25,
'Left',
8,
10,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Julian Weigl',
187,
70,
24,
'Right',
8,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Paco Alcacer',
175,
74,
26,
'Right',
8,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Julian Brandt',
186,
84,
23,
'Right',
8,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Thorgan Hazard',
174,
70,
26,
'Right',
8,
16,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jacob Bruun Larsen',
183,
75,
21,
'Right',
8,
34,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jadon Sancho',
180,
76,
19,
'Right',
8,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mario Gotze',
176,
64,
27,
'Right',
8,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Peter Gulacsi',
190,
83,
27,
'Right',
9,
36,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Yvon Mogo',
186,
84,
25,
'Right',
9,
6,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ibrahima Konate',
192,
84,
20,
'Right',
9,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Dayot Upamecano',
186,
75,
21,
'Right',
9,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Willi Orban',
186,
82,
27,
'Right',
9,
36,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ethan Ampadu',
182,
78,
19,
'Right',
9,
18,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Frederik Jakel',
193,
78,
18,
'Right',
9,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Malik Talabidi',
184,
78,
18,
'Right',
9,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcel Halstenberg',
186,
82,
28,
'Left',
9,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcelo Saracchi',
172,
66,
21,
'Right',
9,
12,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcelo Saracchi',
172,
66,
21,
'Left',
9,
12,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Luan Candido',
187,
76,
18,
'Left',
9,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lukas Klostermann',
189,
83,
23,
'Right',
9,
4,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nordi Mukiele',
185,
78,
22,
'Right',
9,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Diego Demme',
170,
66,
28,
'Right',
9,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Tyler Adams',
176,
68,
20,
'Right',
9,
37,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Stefan Ilsanker',
189,
86,
30,
'Right',
9,
32,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kevin Kampl',
178,
67,
29,
'Right',
9,
20,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Amadou Haidara',
175,
68,
21,
'Right',
9,
38,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Konrad Laimer',
180,
72,
22,
'Right',
9,
32,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Christopher Nkunku',
178,
68,
22,
'Right',
9,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mads Bidstrup',
178,
69,
18,
'Right',
9,
34,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Hannes Wolf',
179,
69,
20,
'Left',
9,
32,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Emil Forsberg',
179,
78,
28,
'Right',
9,
28,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Ademola Lookman',
174,
78,
22,
'Right',
9,
8,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcel Sabitzer',
177,
74,
25,
'Right',
9,
32,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fabrice Hartmann',
178,
68,
18,
'Left',
9,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Timo Werner',
181,
75,
23,
'Right',
9,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Yussuf Poulsen',
193,
78,
25,
'Right',
9,
34,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Matheus Cunha',
184,
75,
20,
'Right',
9,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Oliver Bias',
164,
57,
18,
'Both',
9,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Patrik Schick',
186,
73,
23,
'Left',
9,
39,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Wojciech Szczesny',
196,
84,
29,
'Right',
10,
33,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mattia Perin',
188,
74,
27,
'Right',
10,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gianluigi Buffon',
192,
91,
41,
'Right',
10,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Carlo Pinsoglio',
194,
72,
29,
'Left',
10,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Matthijs de Ligt',
189,
80,
20,
'Right',
10,
14,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Leonardo Bonucci',
190,
86,
32,
'Right',
10,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Danielle Rugani',
190,
77,
25,
'Right',
10,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Merih Demiral',
192,
86,
21,
'Right',
10,
40,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Giorgio Chiellini',
187,
86,
35,
'Left',
10,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alex Sandro',
181,
78,
28,
'Left',
10,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Danilo',
184,
78,
28,
'Right',
10,
9,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mattia De Sciglio',
183,
74,
27,
'Right',
10,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Emre Can',
186,
82,
25,
'Right',
10,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Miralem Pjanic',
180,
68,
29,
'Right',
10,
41,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Aaron Ramsey',
182,
76,
28,
'Both',
10,
18,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Adrien Rabiot',
188,
71,
24,
'Left',
10,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Rodrigo Bentancur',
187,
73,
22,
'Right',
10,
12,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Blaise Matuidi',
180,
74,
32,
'Left',
10,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sami Khedira',
189,
81,
32,
'Right',
10,
4,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Cristiano Ronaldo',
187,
80,
34,
'Both',
10,
10,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Douglas Costa',
172,
70,
22,
'Left',
10,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Juan Cuadrado',
179,
72,
31,
'Right',
10,
17,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Paulo Dybala',
177,
73,
26,
'Left',
10,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gonzalo Higuain',
184,
75,
32,
'Right',
10,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mario Mandzukic',
190,
85,
33,
'Right',
10,
13,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marko Pjaca',
186,
83,
24,
'Right',
10,
13,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Federico Bernardeschi',
183,
75,
25,
'Left',
10,
7,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alex Meret',
191,
82,
22,
'Left',
11,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('David Ospina',
183,
79,
31,
'Right',
11,
17,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Orestis Karnezis',
190,
79,
34,
'Right',
11,
42,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kalidou Koulibaly',
187,
89,
28,
'Right',
11,
11,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Konstantinos Manolas',
189,
79,
28,
'Right',
11,
42,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nikola Maksimovic',
193,
81,
28,
'Right',
11,
19,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lorenzo Tonelli',
184,
78,
29,
'Right',
11,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sebastiano Luperto',
191,
75,
23,
'Left',
11,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Faouzi Ghoulam',
186,
78,
28,
'Left',
11,
31,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Mario Rui',
170,
63,
28,
'Left',
11,
10,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Elseid Hysaj',
182,
70,
25,
'Right',
11,
43,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kevin Malcuit',
179,
75,
28,
'Right',
11,
2,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Giovanni Di Lorenzo',
187,
83,
26,
'Right',
11,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Allan',
175,
73,
28,
'Right',
11,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fabian Ruiz',
189,
70,
23,
'Left',
11,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Piotr Zielinski',
180,
64,
25,
'Both',
11,
33,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Eljif Elmas',
182,
68,
20,
'Right',
11,
44,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Gianluca Gaetano',
183,
69,
19,
'Right',
11,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lorenzo Insigne',
163,
59,
28,
'Right',
11,
7,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Hirving Lozano',
176,
66,
24,
'Right',
11,
23,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Amin Younes',
168,
70,
26,
'Right',
11,
4,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Leandrinho',
174,
66,
21,
'Right',
11,
9,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Jose Maria Callejon',
179,
73,
32,
'Right',
11,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Amato Ciciretti',
170,
65,
25,
'Left',
11,
7,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Arkadiusz Milik',
186,
81,
25,
'Left',
11,
33,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Dries Mertens',
169,
61,
32,
'Right',
11,
16,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Fernando Llorente',
195,
90,
34,
'Right',
11,
1,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Samir Handanovic',
193,
88,
34,
'Right',
12,
20,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Danielle Padeli',
191,
87,
34,
'Right',
12,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Tommaso Berni',
185,
80,
36,
'Right',
12,
7,
1);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Milan Skriniar',
187,
80,
25,
'Right',
12,
45,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Stefan de Vrij',
189,
78,
27,
'Right',
12,
14,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Diego Godin',
187,
73,
33,
'Right',
12,
12,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alessandro Bastoni',
191,
75,
19,
'Left',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Andrea Ranocchia',
195,
80,
31,
'Right',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lorenzo Pirola',
186,
72,
17,
'Left',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Cristiano Biraghi',
186,
79,
27,
'Left',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Federico Dimarco',
175,
78,
22,
'Right',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Danilo D'' Ambrosio',
185,
75,
30,
'Right',
12,
7,
2);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Marcelo Brozovic',
181,
68,
27,
'Both',
12,
13,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lucien Agoume',
185,
72,
17,
'Right',
12,
2,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Nicolo Barella',
172,
68,
22,
'Right',
12,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Stefano Sensi',
168,
62,
24,
'Right',
12,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Matias Vecino',
189,
80,
28,
'Right',
12,
12,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Roberto Gagliardini',
188,
77,
25,
'Right',
12,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Borja Valero',
175,
73,
34,
'Right',
12,
1,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Valentino Lazaro',
180,
73,
23,
'Right',
12,
32,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Antonio Candreva',
181,
72,
32,
'Right',
12,
7,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Kwadwo Asamoah',
173,
76,
30,
'Right',
12,
22,
3);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Alexis Sanchez',
169,
62,
30,
'Right',
12,
15,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Matteo Politano',
171,
68,
36,
'Left',
12,
7,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Romelu Lukaku',
190,
94,
26,
'Left',
12,
16,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Lautaro Martinez',
174,
72,
22,
'Right',
12,
3,
4);

INSERT INTO Footballers(Name,
Height,
Weight,
Age,
StrongFoot,
TeamID,
CountryID,
PositionID)
VALUES ('Sebastiano Esposito',
186,
66,
17,
'Right',
12,
7,
4);
-- inserting fixtures
INSERT INTO Fixtures (HostID,
GuestID)
VALUES (1,
2);

INSERT INTO Fixtures (HostID,
GuestID)
VALUES (1,
3);
-- inserting goalscorers
INSERT INTO Goalscorers(FixtureID,
FootballerID,
TeamID,
Goals)
VALUES (1,
22,
1,
3);

INSERT INTO Goalscorers(FixtureID,
FootballerID,
TeamID,
Goals)
VALUES (1,
43,
2,
2);

INSERT INTO Goalscorers(FixtureID,
FootballerID,
TeamID,
Goals)
VALUES (2,
22,
1,
3);

INSERT INTO Goalscorers(FixtureID,
FootballerID,
TeamID,
Goals)
VALUES (2,
70,
3,
1);
-- some exemplary fixtures and goalscorers queries
SELECT Footballers.Name, Goalscorers.Goals, Teams.Name AS Team, FixtureID as Fixture
FROM Footballers
INNER JOIN Goalscorers
ON Footballers.ID = Goalscorers.FootballerID
INNER JOIN Teams
ON Teams.ID = Footballers.TeamID
WHERE FixtureID = 1;

SELECT Footballers.Name, Goalscorers.Goals, Teams.Name AS Team, FixtureID AS Fixture
FROM Footballers
INNER JOIN Goalscorers
ON Footballers.ID = Goalscorers.FootballerID
INNER JOIN Teams
ON Teams.ID = Footballers.TeamID
WHERE FixtureID = 2;

SELECT (SumOfGoals.Goals), SumOfGoals.FootballerID, Footballers.Name FROM

	(SELECT TOP 1 SUM(Goals) AS Goals, FootballerID FROM Goalscorers
	GROUP BY FootballerID
	ORDER BY Goals DESC)AS SumOfGoals

INNER JOIN Footballers
ON Footballers.ID = SumOfGoals.FootballerID;

SELECT SUM(Goals) AS Result, Teams.Name AS Team, FixtureID AS Fixture
FROM Teams
INNER JOIN Goalscorers
ON Teams.ID = Goalscorers.TeamID
GROUP BY TeamID, FixtureID, Teams.Name;

GO

-- some exemplary queries

SELECT Managers.Name AS Manager, Countries.Name AS Country
FROM Managers
INNER JOIN Countries
ON Countries.ID = Managers.CountryID;

SELECT Footballers.Name AS Footballer, Footballers.StrongFoot, Footballers.Height, Footballers.Weight,
Footballers.Age, Countries.Name AS Country, Positions.Name AS Position, Teams.Name AS Team
FROM (((Footballers
INNER JOIN Countries
ON Countries.ID = Footballers.CountryID)
INNER JOIN Positions
ON Positions.ID = Footballers.PositionID)
INNER JOIN Teams
ON Teams.ID = Footballers.TeamID)
WHERE Footballers.ID = 22;

SELECT Footballers.Name AS Footballer, Footballers.StrongFoot, Footballers.Height, Footballers.Weight, 
Footballers.Age, Countries.Name AS Country, Positions.Name AS Position, Teams.Name AS Team
FROM Footballers, Countries, Positions, Teams
WHERE Countries.ID = Footballers.CountryID AND
Positions.ID = Footballers.PositionID
AND Teams.ID = Footballers.TeamID
AND Footballers.ID = 22;

SELECT AVG(Footballers.Age) AS Age, Teams.Name AS Team
FROM Footballers, Teams
WHERE Teams.ID = Footballers.TeamID
GROUP BY Teams.Name;

SELECT Footballers.Name, Teams.Name AS Team, Footballers.Age
FROM Footballers
INNER JOIN
(SELECT MIN(Age) AS MinAge, Footballers.TeamID
FROM Footballers, Teams
WHERE Footballers.TeamID = Teams.ID
GROUP BY Footballers.TeamID) AS MinimumAgeAndTeamSubquery
ON MinimumAgeAndTeamSubquery.TeamID = Footballers.TeamID AND 
MinimumAgeAndTeamSubquery.MinAge = Footballers.Age 
INNER JOIN Teams
ON Teams.ID = MinimumAgeAndTeamSubquery.TeamID;
-- some exemplary views

GO

CREATE VIEW All_Argentinian_Footballers AS
SELECT Footballers.Name AS Footballer, Countries.Name AS Country
FROM Footballers
INNER JOIN Countries
ON Footballers.CountryID = Countries.ID
WHERE Countries.Name = 'Argentina';

GO

SELECT * FROM All_Argentinian_Footballers;

GO

CREATE VIEW All_Spanish_Teams AS
SELECT Teams.Name AS Team, Countries.Name AS Country
FROM Teams
INNER JOIN Countries
ON Teams.CountryID = Countries.ID
WHERE Countries.Name = 'Spain';

GO

SELECT * FROM All_Spanish_Teams;

GO
-- a case function (if we change one of the numbers, the result will change - "There's no such position
-- will be displayed")

SELECT CASE Positions.ID
WHEN 1 THEN 'Goalkeeper'
WHEN 2 THEN 'Defender'
WHEN 3 THEN 'Midfielder'
WHEN 4 THEN 'Striker'
ELSE 'There''s no such position'
END AS
Position, Positions.ID
FROM Positions;

-- a stored procedure

GO

CREATE PROCEDURE Find_Footballer_Position @Footballer nvarchar(255)
AS
SELECT Footballers.Name AS Footballer, Positions.Name AS Position
FROM Footballers
INNER JOIN Positions
ON Footballers.PositionID = Positions.ID
WHERE @Footballer = Footballers.Name;

GO

EXEC Find_Footballer_Position @Footballer = 'Lionel Messi';

GO

CREATE PROCEDURE Find_Footballer_Position_By_His_ID @Footballer int
AS
SELECT Footballers.Name AS Footballer, Positions.Name AS Position
FROM Footballers
INNER JOIN Positions
ON Footballers.PositionID = Positions.ID
WHERE @Footballer = Footballers.ID;

GO

EXEC Find_Footballer_Position_By_His_ID @Footballer = 22;

GO