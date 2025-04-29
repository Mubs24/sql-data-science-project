-- Q8: States from state_lookup that are missing from milk_production in 2023
SELECT s.State
FROM state_lookup s
LEFT JOIN milk_production m ON s.State_ANSI = m.State_ANSI AND m.Year = 2023
WHERE m.State_ANSI IS NULL;