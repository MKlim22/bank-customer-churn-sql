-- Final business insights: highest-risk customer segments

SELECT
    Geography,
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        ELSE '65+'
    END AS age_group,
    IsActiveMember,
    NumOfProducts,
    COUNT(*) AS customers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY
    Geography,
    age_group,
    IsActiveMember,
    NumOfProducts
HAVING COUNT(*) >= 50
ORDER BY churn_rate_percent DESC,
customers DESC;

-- Lowest-risk customer segments

SELECT
    Geography,
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        ELSE '65+'
    END AS age_group,
    IsActiveMember,
    NumOfProducts,
    COUNT(*) AS customers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY
    Geography,
    age_group,
    IsActiveMember,
    NumOfProducts
HAVING COUNT(*) >= 50
ORDER BY churn_rate_percent ASC,
customers DESC;