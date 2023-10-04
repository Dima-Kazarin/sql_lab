SELECT region, SUM(population) AS sum_population
FROM cities
GROUP BY region;

SELECT region, SUM(population) AS sum_population
FROM cities
GROUP BY region
HAVING COUNT(*) >= 10;

SELECT name, population
FROM cities
WHERE region IN (SELECT uuid
                 FROM regions
                 WHERE area_quantity >= 5)
ORDER BY population
LIMIT 5
OFFSET 10;

SELECT name, 
	   (SELECT SUM(population)
        FROM cities
        WHERE population > 300000 AND region = regions.uuid) AS sum_population
FROM regions;

SELECT name, population
FROM cities
WHERE population NOT IN (150000, 500000) AND region IN (SELECT uuid
                 										FROM regions
                 										WHERE area_quantity <= 5);