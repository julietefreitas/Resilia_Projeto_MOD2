SHOW DATABASES;

USE NBA_GRUPO6;

CREATE TABLE games_details_resumida
(GAME_ID int, TEAM_ID int, TEAM_ABBREVIATION text, TEAM_CITY text,	
PLAYER_ID int, PLAYER_NAME text, FGM int, FG_PCT double, FG3M int, FG3_PCT double, FTM int, FT_PCT double,	
OREB int, REB int, AST int, BLK int, PF int, PTS int);

SHOW TABLES;

SELECT * FROM games_details_resumida;

-- 'C:/Users/VINÍCIUS/Desktop/Projeto-Modulo2/Resilia_Projeto_MOD2/NBA games data/games_details-resumida.csv' 
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/games_details-resumida.csv'
INTO TABLE games_details_resumida
FIELDS TERMINATED BY ';'
IGNORE 1 LINES; 

SELECT * FROM games_details_resumida;

-- SELECT SUM(FT_PCT) FROM games_details_resumida WHERE TEAM_ID = 1610612737; 