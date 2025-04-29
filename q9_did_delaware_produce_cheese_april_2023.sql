-- Q9: Did Delaware produce cheese in April 2023?
SELECT CAST(REPLACE(c.Value, ',', '') AS INTEGER) AS cheese_production
FROM state_lookup s
LEFT JOIN cheese_production c ON s.State_ANSI = c.State_ANSI AND c.Year = 2023 AND c.Period = 'APR'
WHERE s.State = 'DELAWARE';