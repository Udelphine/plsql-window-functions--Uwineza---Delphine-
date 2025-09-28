SELECT
    patient_idFK,
    treatment_type,
    cost,
    LAG(cost, 1) OVER (PARTITION BY patient_idFK ORDER BY treatment_idPK) AS prev_cost,
    LEAD(cost, 1) OVER (PARTITION BY patient_idFK ORDER BY treatment_idPK) AS next_cost,
    ROUND(
        (cost - LAG(cost, 1) OVER (PARTITION BY patient_idFK ORDER BY treatment_idPK)) 
        / NULLIF(LAG(cost, 1) OVER (PARTITION BY patient_idFK ORDER BY treatment_idPK), 0) * 100, 2
    ) AS growth_percent
FROM treatments;
