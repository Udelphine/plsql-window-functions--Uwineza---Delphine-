SELECT
    patient_idFK,
    treatment_type,
    cost,
    SUM(cost) OVER (
        PARTITION BY patient_idFK 
        ORDER BY treatment_idPK
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_rows,
    SUM(cost) OVER (
        PARTITION BY patient_idFK 
        ORDER BY treatment_idPK
        RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_range,
    AVG(cost) OVER (PARTITION BY patient_idFK) AS avg_cost,
    MIN(cost) OVER (PARTITION BY patient_idFK) AS min_cost,
    MAX(cost) OVER (PARTITION BY patient_idFK) AS max_cost
FROM treatments;
