-- #1
    SELECT population FROM world
  WHERE name = 'Germany'
-- #2
    SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');
-- #3   
    SELECT name, area FROM world
  WHERE area BETWEEN 250000 AND 300000