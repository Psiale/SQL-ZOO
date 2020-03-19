-- #1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- #2
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- #3
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

-- #4
SELECT winner FROM nobel
WHERE yr >= 2000
AND subject = 'PEACE';

-- #5
select * FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

-- #6
SELECT * FROM nobel
 WHERE  winner IN ('Theodore Roosevelt',
'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

-- #7
SELECT winner FROM nobel
WHERE winner LIKE('John%');

-- #8
SELECT yr, subject, winner FROM nobel
WHERE subject = 'Physics' AND yr = 1980
OR subject = 'Chemistry' AND yr = 1984;

-- #9
SELECT yr, subject, winner FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine' );


-- #10
SELECT yr, subject, winner FROM nobel
WHERE yr < 1910 AND subject = 'Medicine' 
OR yr >= 2004 AND subject = 'Literature';

-- #11
SELECT * FROM nobel 
WHERE winner = 'Peter Grünberg'

-- #12
SELECT * FROM nobel
WHERE winner = "Eugene O'Neill";

-- #13
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'A%' ORDER BY winner DESC;

-- #14
SELECT winner, subject, subject IN ('Physics','Chemistry')
  FROM nobel
 WHERE yr=1984
 ORDER BY subject,winner