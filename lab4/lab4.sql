SELECT UPPER(name) AS name_upcase
FROM `cities`
ORDER BY name ASC
LIMIT 5
OFFSET 5;

SELECT name, LENGTH(name) as length
FROM `cities`
WHERE LENGTH(name) NOT IN (8, 9, 10);

SELECT SUM(population) AS count_population
FROM `cities`
WHERE region IN ('C', 'S');

SELECT AVG(population) AS avg_population
FROM `cities`
WHERE region = 'W';

SELECT COUNT(name) AS count_cities
FROM `cities`
WHERE region = 'E';