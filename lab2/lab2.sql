SELECT name
FROM cities
WHERE population >= 1000000;

SELECT name
FROM cities
WHERE region = 'E' or region = 'W'
ORDER BY population ASC;

SELECT name
FROM cities
WHERE population > 50000 AND region IN ('S', 'C', 'N');

SELECT name, population, region
FROM cities
WHERE population > 150000 AND population < 350000 AND region IN ('E', 'W', 'N')
ORDER BY name ASC
LIMIT 20;

SELECT name
FROM cities
WHERE region NOT IN ('E', 'W')
ORDER BY population ASC
LIMIT 10
OFFSET 10;