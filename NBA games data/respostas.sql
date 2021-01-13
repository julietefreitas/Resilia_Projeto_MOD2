SELECT * FROM GAMES; 
select * from teams;
select * from games_details_resumida;

-- 1) Quais equipes conquistaram mais vitórias dentro de casa em 2019? 
SELECT T.NICKNAME,
 TABELA.VITORIAS_CASA AS VITORIAS_EM_CASA,
 TABELA.SEASON AS SEASON 
 FROM  
	(SELECT SEASON, HOME_TEAM_ID, SUM(HOME_TEAM_WINS) AS VITORIAS_CASA FROM GAMES 
	WHERE SEASON = 2019
	GROUP BY HOME_TEAM_ID 
	ORDER BY VITORIAS_CASA DESC) TABELA
INNER JOIN TEAMS T on T.TEAM_ID = TABELA.HOME_TEAM_ID    
ORDER BY VITORIAS_EM_CASA DESC
LIMIT 5;

-- 2) Quais equipes foram campeãs mais vezes em 2018?
SELECT HOME_TEAM_ID,
 sum(HOME_TEAM_WINS) AS VITORIAS FROM GAMES 
WHERE SEASON = 2018 
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS DESC;

-- 3) Quais equipes foram campeãs mais vezes em 2017?
SELECT HOME_TEAM_ID, 
sum(HOME_TEAM_WINS) AS VITORIAS FROM GAMES 
WHERE SEASON = 2017 
GROUP BY HOME_TEAM_ID 
ORDER BY VITORIAS DESC;

-- 4) Quais equipes tiveram maior número de rebotes em 2019? 
SELECT t.nickname AS NOME_DO_TIME,
 tabela.total_rebotes AS TOTAL_DE_REBOTES 
 FROM (SELECT  team_id, sum(oreb + reb) AS total_rebotes FROM games_details_resumida
	GROUP BY team_id) AS tabela
	INNER JOIN teams t ON t.team_id = tabela.team_id
ORDER BY tabela.total_rebotes DESC;


-- 5) Quais equipes tiveram o maior número de pontos em um jogo?
SELECT T.NICKNAME AS EQUIPE,
	   TIMES_PONTUADORES.PONTOS_FEITOS 
FROM	
(SELECT G.TEAM_ID, SUM(G.PTS) AS PONTOS_FEITOS
	FROM 
		(SELECT GAME_ID, 
				SUM(PTS) AS PONTOS_FEITOS
				FROM GAMES_DETAILS_RESUMIDA
				GROUP BY GAME_ID
				ORDER BY PONTOS_FEITOS DESC
				LIMIT 1) TABELA_MAIORPONT
	INNER JOIN GAMES_DETAILS_RESUMIDA G ON G.GAME_ID = TABELA_MAIORPONT.GAME_ID
	GROUP BY G.TEAM_ID) TIMES_PONTUADORES
INNER JOIN TEAMS T ON T.TEAM_ID = TIMES_PONTUADORES.TEAM_ID;


-- 6) Quais jogadores marcaram mais vezes triplos duplos? (10 pontos ou +, 10 assistências ou + e 10 rebotes ou +) 
    
-- 7) Quais equipes tiveram o maior índice de pontos fora de casa em 2019? 

-- 8) Jogador com maior número de assistências?
SELECT DISTINCT P.PLAYER_NAME AS JOGADOR , TAB_ASSIST.NUMERO_ASSISTENCIAS
FROM
	(SELECT PLAYER_ID, MAX(AST) AS NUMERO_ASSISTENCIAS FROM GAMES_DETAILS_RESUMIDA
	GROUP BY PLAYER_ID
	ORDER BY MAX(AST) DESC
    LIMIT 5) AS TAB_ASSIST
INNER JOIN PLAYER P ON P.PLAYER_ID = TAB_ASSIST.PLAYER_ID
ORDER BY TAB_ASSIST.NUMERO_ASSISTENCIAS DESC;


SELECT PLAYER_ID, MAX(AST) AS NUMERO_ASSISTENCIAS FROM GAMES_DETAILS_RESUMIDA
	GROUP BY PLAYER_ID
	ORDER BY MAX(AST) DESC
    LIMIT 5;


SELECT game_id, sum(pf) FROM GAMES_DETAILS_RESUMIDA
group by game_id
order by sum(pf) desc;


select game_id,team_id,sum(FG3M) from games_details_resumida
group by game_id
ORDER BY SUM(FG3M) DESC;

select game_id , sum(fg3m) from games_details_resumida
where game_id = "21900482";
