# Bank Customer Churn -SQL Project

Initial project structure

```
bank-customer-churn-sql/
|
├─ data/
│  ├─ raw/
│  └─ processed/
|
├─ sql/
│  ├─ 01_setup.sql
│  ├─ 02_exploration.sql
│  ├─ 03_kpis.sql
│  ├─ 04_segmentation.sql
│  ├─ 05_risk_profiles.sql
│  └─ 06_final_insights.sql
|
├─ outputs/
│  └─ results.md        # copy/paste key query outputs + insights
|
├─ import_csv.py
└─ README.md
```

## Project Overview

This project analyzes customer churn in a retail bank using SQL.

The analysis explores key factors related to customer churn such as:
- geography
- gender
- activity level
- number of products
- customer demographics

The goal is to identify patterns associated with higher churn risk.

## Dataset

Source: Kaggle - Bank Customer Churn Dataset

The dataset contains information about 10,000 bank customers including:
- credit score
- geography
- gender
- age
- tenure
- balance
- number of products
- activity status
- churn status

## Tools used

- SQL (SQLite)
- Vs Code
- Git & GitHub