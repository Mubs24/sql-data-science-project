-- Q4: Average honey production in 2022
SELECT AVG(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS avg_honey_2022
FROM honey_production
WHERE Year = 2022;