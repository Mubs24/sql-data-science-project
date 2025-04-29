-- Q1: Total milk production for 2023
SELECT SUM(CAST(REPLACE(Value, ',', '') AS INTEGER)) AS total_milk_production_2023
FROM milk_production
WHERE Year = 2023;