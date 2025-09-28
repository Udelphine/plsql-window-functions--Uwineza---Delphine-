WITH patient_revenue AS (
    SELECT 
        patient_idFK,
        SUM(cost) AS total_revenue
    FROM treatments
    GROUP BY patient_idFK
)
SELECT 
    patient_idFK,
    total_revenue,
    ROW_NUMBER() OVER (ORDER BY total_revenue DESC) AS row_num,
    RANK() OVER (ORDER BY total_revenue DESC) AS rank_num,
    DENSE_RANK() OVER (ORDER BY total_revenue DESC) AS dense_rank_num,
    PERCENT_RANK() OVER (ORDER BY total_revenue DESC) AS percent_rank_num
FROM patient_revenue;
