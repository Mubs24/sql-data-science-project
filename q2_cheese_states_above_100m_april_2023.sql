-- Q2: States with cheese production > 100 million in April 2023
SELECT s.State, CAST(REPLACE(c.Value, ',', '') AS INTEGER) AS cheese_production
FROM cheese_production c
JOIN state_lookup s ON c.State_ANSI = s.State_ANSI
WHERE c.Year = 2023 AND c.Period = 'APR' AND CAST(REPLACE(c.Value, ',', '') AS INTEGER) > 100000000;