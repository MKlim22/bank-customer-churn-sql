# Bank Customer Churn Analysis

## Dataset Exploration

Total customers: 10,000

Countries in dataset:
- France
- Spain
- Germany

Gender distribution:
- Female: 4543
- Male: 5457

Churn distribution:
- Customers stayed: 7962
- Customers churned: 2038

Overall churn rate: 20.38%

### Churn by Country

Germany has the highest churn rate (32.44%), which is nearly double the churn rate observed in France (16.17%) and Spain (16.67%).
This suggests potential market-specific issues affecting customer retention in Germany.

### Churn by Gender

Female customers show a higher churn rate (25.07%) compared to male customers (16.47%).
This difference may indicate variations in product usage or customer satisfaction across genders.

### Churn by Activity Status

Inactive customers have a significantly higher churn rate (26.87%) compared to active customers (14.27%).
Customer engagement appears to be strongly associated with retention.

### Churn by Number of Products

Customers with two products show the lowest churn rate (7.6%), suggesting higher engagement and loyalty.
Customers with only one product show significantly higher churn (27.71%).
Interestingly, customers with three or four products exhibit extremely high churn rates, although the sample size for there groups is relatively small.

### Churn by Age Group

Customers aged **51-65 show the highest churn rate (52.96%)**, indicating a significantly higher risk of leaving the bank compared to other age groups.
Customers **under 30 years old have the lowest churn rate (7.56%)**, suggesting stronger retention among younger clients.
The **30-50 age group represents the largest segment of customers**, with a moderate churn rate of 19.03%.
These results suggest that middle-aged customers approaching retirement may require targeted retention strategies.

### Churn by Credit Score

Customers with lower credit scores show slightly higher churn rates.
Customers with **poor credit scores have the highest churn rate (23.73%)**, while customers with **good credit scores show lower churn (19.25%)**.
However, the differences between credit score groups are relatively moderate, suggesting that credit score alone is not the strongest predictor of churn in this dataset.

### Churn by Income Level

Customer income level does not appear to significantly influence churn behavior.
The churn rates across income groups are very similar:
- High income: 20.86%
- Low income: 19.93%
- Middle income: 19.87%
This suggests that salary alone is not a strong driver of customer churn in this dataset.