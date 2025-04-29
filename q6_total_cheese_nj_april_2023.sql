-- Q6: Total cheese production for New Jersey in April 2023
SELECT SUM(CAST(REPLACE(c.Value, ',', '') AS INTEGER)) AS total_cheese
FROM cheese_production c
JOIN state_lookup s ON c.State_ANSI = s.State_ANSI
WHERE s.State = 'NEW JERSEY' AND c.Year = 2023 AND c.Period = 'APR';