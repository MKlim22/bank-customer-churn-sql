import sqlite3
import pandas as pd

# Connect to database
conn = sqlite3.connect("churn.db")

# Load csv
df = pd.read_csv("data/raw/Customer-Churn-Records.csv")

# Remove spaces in column names
df.columns = df.columns.str.replace(" ", "")

# Insert into table
df.to_sql("customers", conn, if_exists="append", index=False)

conn.close()

print("CSV imported successfully!")