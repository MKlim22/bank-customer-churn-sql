-- Explore dataset structure

-- total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- countries in dataset
SELECT DISTINCT Geography
FROM customers;

-- gender distribution
SELECT Gender, COUNT(*) AS customers
FROM customers
GROUP BY Gender;

-- churn distribution
SELECT Exited, COUNT(*) AS customers
FROM customers
GROUP BY Exited;

-- overall churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(AVG(Exited) * 100, 2) AS churn_rate_percent
FROM customers;