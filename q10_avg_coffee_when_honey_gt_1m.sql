-- Q10: Average coffee production in years where honey > 1 million
SELECT AVG(coffee_total) AS avg_coffee_production
FROM (
    SELECT h.Year, SUM(CAST(REPLACE(c.Value, ',', '') AS INTEGER)) AS coffee_total
    FROM honey_production h
    JOIN coffee_production c ON h.Year = c.Year
    GROUP BY h.Year
    HAVING SUM(CAST(REPLACE(h.Value, ',', '') AS INTEGER)) > 1000000
);