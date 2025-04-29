-- Q3: Total coffee production in 2011
SELECT SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS total_coffee_2011
FROM coffee_production
WHERE Year = 2011;