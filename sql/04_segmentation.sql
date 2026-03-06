-- Customer segmentation analysis

-- Age groups segmentation
SELECT 
    CASE 
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 50 THEN '30-50'
        WHEN Age BETWEEN 51 AND 65 THEN '51-65'
        ELSE '65+'
        END AS age_group,
        COUNT(*) AS customers,
        SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
        ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY age_group
ORDER BY churn_rate_percent DESC;

-- Credit score segmentation
SELECT
    CASE
        WHEN CreditScore < 500 THEN 'Poor'
        WHEN CreditScore BETWEEN 500 AND 650 THEN 'Average'
        WHEN CreditScore BETWEEN 651 AND 750 THEN 'Good'
        ELSE 'Excellent'
    END AS credit_score_group,
    COUNT(*) AS customers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY credit_score_group
ORDER BY churn_rate_percent DESC;

-- Salary segmentation
SELECT
    CASE
        WHEN EstimatedSalary < 50000 THEN 'Low income'
        WHEN EstimatedSalary BETWEEN 50000 AND 100000 THEN 'Middle income'
        ELSE 'High income'
    END AS salary_group,
    COUNT(*) AS customers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM customers
GROUP BY salary_group
ORDER BY churn_rate_percent DESC;