SELECT * FROM GAMES; 
select * from teams;

-- 1) Quais equipes conquistaram mais vitórias dentro de casa em 2019? 
SELECT T.NICKNAME, TABELA.VITORIAS_CASA AS VITORIAS_EM_CASA, TABELA.SEASON AS SEASON FROM  
	(SELECT SEASON, HOME_TEAM_ID, SUM(HOME_TEAM_WINS) AS VITORIAS_CASA FROM GAMES 
	WHERE SEASON = 2019
	GROUP BY HOME_TEAM_ID 
	ORDER BY VITORIAS_CASA DESC) TABELA
INNER JOIN TEAMS T on T.TEAM_ID = TABELA.HOME_TEAM_ID    
ORDER BY VITORIAS_EM_CASA DESC
LIMIT 5;

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
SELECT t.nickname AS NOME_DO_TIME, tabela.total_rebotes AS TOTAL_DE_REBOTES FROM 
	(SELECT  team_id, sum(oreb + reb) AS total_rebotes FROM games_details_resumida
	GROUP BY team_id) AS tabela
	INNER JOIN teams t ON t.team_id = tabela.team_id
ORDER BY tabela.total_rebotes DESC;

-- 5) Quais equipes tiveram o maior número de passes em 2019?

-- 6) Quais jogadores marcaram mais vezes triplos duplos? (10 pontos ou +, 10 assistências ou + e 10 rebotes ou +) 

-- 7) Quais equipes tiveram o maior índice de pontos fora de casa em 2019? 
