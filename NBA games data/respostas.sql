SELECT * FROM GAMES; 
-- 1) Quais equipes conquistaram mais vitórias dentro de casa  nos 3 últimos anos? 

CREATE	TABLE vitorias_casa_2019(
SELECT SEASON, HOME_TEAM_ID, SUM(HOME_TEAM_WINS) AS VITORIAS_CASA FROM GAMES 
WHERE SEASON = 2019
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS_CASA DESC
LIMIT 5);

INSERT INTO vitorias_casa_2018 SELECT SEASON, HOME_TEAM_ID, SUM(HOME_TEAM_WINS) AS VITORIAS_CASA FROM GAMES 
WHERE SEASON = 2018
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS_CASA DESC
LIMIT 5;

CREATE	TABLE vitorias_casa_2018(
SELECT SEASON, HOME_TEAM_ID, SUM(HOME_TEAM_WINS) AS VITORIAS_CASA FROM GAMES 
WHERE SEASON = 2018
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS_CASA DESC
LIMIT 5);




-- 2) Quais equipes foram campeãs mais vezes em 2018?
SELECT HOME_TEAM_ID, sum(HOME_TEAM_WINS) AS VITORIAS FROM GAMES 
WHERE SEASON = 2018 
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS DESC;

-- 3) Quais equipes foram campeãs mais vezes em 2017?
SELECT HOME_TEAM_ID, sum(HOME_TEAM_WINS) AS VITORIAS FROM GAMES 
WHERE SEASON = 2017 
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS DESC;

-- 4) Quais equipes tiveram maior número de rebotes em 2019? 

-- 5) Quais equipes tiveram o maior número de passes em 2019?

-- 6) Quais jogadores marcaram mais vezes triplos duplos? (10 pontos ou +, 10 assistências ou + e 10 rebotes ou +) 

-- 7) Quais equipes tiveram o maior índice de pontos fora de casa em 2019? 
