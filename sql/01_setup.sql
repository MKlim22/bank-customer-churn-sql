-- Bank Customer Churn SQL Project
-- Step 1: Create database structure
-- This script creates the main table used for churn analysis.

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    RowNumber INTEGER,
    CustomerId INTEGER,
    Surname TEXT,
    CreditScore INTEGER,
    Geography TEXT,
    Gender TEXT,
    Age INTEGER,
    Tenure INTEGER,
    Balance REAL,
    NumOfProducts INTEGER,
    HasCrCard INTEGER,
    IsActiveMember INTEGER,
    EstimatedSalary REAL,
    Exited INTEGER,
    Complain INTEGER,
    SatisfactionScore INTEGER,
    CardType TEXT,
    PointEarned INTEGER
);