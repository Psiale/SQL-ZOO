-- #1
SELECT id, title
 FROM movie
 WHERE yr=1962

-- #2
SELECT yr FROM movie
WHERE title = 'Citizen Kane'

-- #3
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr

-- #4
SELECT id FROM actor 
WHERE name = 'Glenn Close'

-- #5
SELECT DISTINCT id FROM movie
JOIN casting ON (id=movieid AND title = 'Casablanca')

-- #6
SELECT DISTINCT name FROM actor
JOIN casting ON (actor.id = casting.actorid)
WHERE movieid = 11768

-- #7
SELECT DISTINCT name FROM actor
JOIN casting ON (actor.id = casting.actorid)
WHERE movieid = (SELECT DISTINCT id FROM movie
JOIN casting ON (id=movieid AND title = 'Alien'))

-- #8
SELECT DISTINCT title FROM movie
JOIN casting ON (movie.id = casting.movieid)
WHERE casting.actorid =
(SELECT DISTINCT id FROM actor
WHERE name = 'Harrison Ford')

-- #9
SELECT DISTINCT title FROM movie
JOIN casting ON (movie.id = casting.movieid)
WHERE ord != 1 AND casting.actorid =
(SELECT DISTINCT id FROM actor
WHERE name = 'Harrison Ford')

-- #10
SELECT DISTINCT title, name FROM movie
JOIN casting ON (movie.id = casting.movieid)
JOIN actor ON (casting.actorid = actor.id)
WHERE yr = 1962 AND ord = 1

-- #11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2

-- #12
SELECT DISTINCT title, name FROM  movie
JOIN casting ON (movie.id = casting.movieid AND ord =1)
JOIN actor ON (actor.id = casting.actorid)
WHERE movie.id IN (
                    SELECT movieid FROM casting
WHERE actorid IN (
  SELECT id FROM actor
  WHERE name='Julie Andrews')  ) 


-- #13
SELECT name FROM casting JOIN actor ON (casting.actorid= actor.id)
WHERE ord = 1
GROUP BY actorid HAVING COUNT(casting.movieid) >= 15
ORDER BY name

-- #14


-- #15

