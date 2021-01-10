SHOW DATABASES;

USE NBA_GRUPO6;                               

SHOW TABLES;

SELECT * FROM games;

-- 'C:/Users/VINÍCIUS/Desktop/Projeto-Modulo2/Resilia_Projeto_MOD2/NBA games data/games_details-resumida.csv' 
LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/games_details.csv'
INTO TABLE games_details
FIELDS TERMINATED BY ';'
IGNORE 1 LINES; 

show variables like "secure_file_priv";

SELECT * FROM games_details;