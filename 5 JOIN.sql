-- # 1
SELECT matchid, player FROM goal 
  WHERE teamid LIKE '%GER'

-- # 2
SELECT id,stadium,team1,team2
  FROM game WHERE id  = '1012'

-- # 3
SELECT player, teamid, stadium, mdate 
  FROM game JOIN goal ON (id=matchid)
WHERE teamid LIKE '%GER'


-- # 4
SELECT team1, team2, player FROM goal
JOIN game  ON (id=matchid)
WHERE player LIKE 'Mario%'

-- # 5
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON (teamid=id)
 WHERE gtime<=10

-- # 6
SELECT mdate, teamname FROM game 
JOIN eteam ON (team1 = eteam.id)
WHERE coach LIKE '%Santos'

-- # 7
SELECT player FROM goal 
JOIN game ON (id=matchid)
WHERE stadium LIKE '%Warsaw'

-- # 8
SELECT DISTINCT player FROM goal
JOIN game ON (matchid=id AND teamid != 'GER')
WHERE team1 = 'GER' OR team2 = 'GER'

-- # 9
SELECT teamname, COUNT(*) as GOALS
  FROM eteam JOIN goal ON id=teamid 
 GROUP BY teamname

-- # 10
SELECT stadium, COUNT(*) as GOALS
FROM game JOIN goal ON (matchid = id) 
GROUP by stadium

-- # 11
SELECT matchid,mdate, COUNT(player) AS GOALS
  FROM game JOIN goal ON (id = matchid ) 
 WHERE (team1 = 'POL' OR team2 = 'POL') 
GROUP BY matchid



-- # 12
SELECT matchid, mdate, COUNT(player) AS Ger_GOALS
FROM game JOIN goal ON (id = matchid AND teamid = 'GER')
group by matchid
