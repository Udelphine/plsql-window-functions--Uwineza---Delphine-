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
    NTILE(4) OVER (ORDER BY total_revenue DESC) AS revenue_quartile,
    CUME_DIST() OVER (ORDER BY total_revenue DESC) AS cumulative_distribution
FROM patient_revenue;
