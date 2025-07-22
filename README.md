# 🛍️ RetailMind: Data-Driven Customer Insight System

RetailMind is a hybrid project that combines **SQL data modeling** and **Python analytics** to extract meaningful insights from retail transaction data.

---

## 🧠 Project Goal

To build a mini end-to-end system where:
- SQL is used to design the database and load customer data
- Python is used to analyze patterns and segment customers based on responses and transaction behavior

---

## ⚙️ Tech Stack

| Layer     | Tools/Technologies           |
|-----------|------------------------------|
| Backend   | MySQL                        |
| Data Viz  | Python, Jupyter Notebook     |
| Libraries | pandas, seaborn, matplotlib  |

---

## 🗂️ Project Components

### 📄 SQL PART (`sql/Retail_DB_Setup.sql`)
- Creates `Retail_Data` database
- Loads:
  - `Retail_Transactions` (transaction ID, date, amount)
  - `Retail_Responses` (customer ID, response binary)

### 📓 Python PART (`notebooks/iStudio_Analysis.ipynb`)
- Reads exported SQL tables
- Cleans and processes data
- Performs:
  - EDA
  - Response rate analysis
  - Transaction patterns
  - Segmentation (e.g., RFM-style or custom)

---

## 🧪 Sample SQL Query

```sql
SELECT 
    r.Customer_ID, 
    SUM(t.Transaction_Amount) AS Total_Spent 
FROM Retail_Responses r
JOIN Retail_Transactions t 
ON r.Customer_ID = t.Transaction_ID
GROUP BY r.Customer_ID;
