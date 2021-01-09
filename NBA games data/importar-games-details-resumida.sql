SHOW DATABASES;

USE NBA_GRUPO6;

CREATE TABLE games_details_resumida
(GAME_ID INT, TEAM_ID INT, TEAM_ABBREVIATION TEXT, TEAM_CITY TEXT,	
PLAYER_ID INT, PLAYER_NAME TEXT, FGM INT, FG_PCT DOUBLE, FG3M INT, FG3_PCT DOUBLE, FTM INT, FT_PCT DOUBLE,	
OREB INT, REB INT, AST INT, BLK INT, PF INT, PTS INT);

SHOW TABLES;

SELECT * FROM games_details_resumida;

-- 'C:/Users/VINÍCIUS/Desktop/Projeto-Modulo2/Resilia_Projeto_MOD2/NBA games data/games_details-resumida.csv' 
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/games_details-resumida.csv'
INTO TABLE games_details_resumida
FIELDS TERMINATED BY ';'
IGNORE 1 LINES; 

SELECT * FROM games_details_resumida;

-- SELECT SUM(FT_PCT) FROM games_details_resumida WHERE TEAM_ID = 1610612737; 