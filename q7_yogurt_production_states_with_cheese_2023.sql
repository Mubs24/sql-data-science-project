-- Q7: Total yogurt production in 2022 for states that had cheese data in 2023
SELECT SUM(CAST(REPLACE(y.Value, ',', '') AS INTEGER)) AS total_yogurt_2022
FROM yogurt_production y
WHERE y.Year = 2022 AND y.State_ANSI IN (
    SELECT DISTINCT State_ANSI FROM cheese_production WHERE Year = 2023
);