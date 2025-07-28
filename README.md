📊 Retail Sales Performance Dashboard – Power BI + SQL + python (pandas)

A full-stack analytics project built using SQL for data processing and Power BI for interactive visualization. This dashboard provides actionable insights into 4 years of sales data, helping identify profitable categories, regional trends, discount patterns, and overall performance.

🧠 Key Business Questions Answered

📈 What are the sales, profit, and margin trends over time?

🧾 Which product categories contribute most to revenue and profit?

🌍 Which regions perform better, and where is profitability lagging?

📊 What’s driving the most profit growth?

🚀 Insights Uncovered

$2.3M Total Revenue from 37.9K units sold.

$286.4K Total Profit with an average margin of 12.47%.

Technology category alone contributed to ~60% of profit growth over the 4-year period.

East and West regions generated the highest profits.

🛠️ Tools & Tech Stack Component	Tool Used

Data Processing	PostgreSQL (SQL)

Data Visualization	Power BI

Dataset	Superstore Dataset (Kaggle-style retail sales data)

## 🔧 Data Cleaning Script

The `clean_superstore.py` script loads the original "Superstore" dataset, cleans product names by removing extra whitespace, special characters, and formatting inconsistencies, then saves a clean CSV for use in Power BI.

- Language: Python (Pandas, regex)
- Handles: NaNs, non-breaking spaces, quotes, commas
- Designed for reproducibility and modularity


| File                     | Description                                                                                                                                           |
| ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `financial_analysis.sql` | SQL queries used for data cleaning, transformation, and aggregating performance metrics before visualization. 🔗 [View SQL](./financial_analysis.sql) |
| `clean_superstore.py`    | Python script to clean raw data—removes special characters, normalizes whitespace, and prepares the dataset for analysis. Modular and reproducible.   |
| `Superstore_Cleaned.csv` | Cleaned dataset output from `clean_superstore.py`. Used as input for Power BI dashboard.                                                              |
| `p3.pbix`                | Power BI file containing the interactive dashboard. Includes slicers, KPIs, trend visuals, and category/regional analysis.                            |
| `p3.pdf`                 | Static PDF snapshot of the final dashboard for quick reference or presentation use.                                                                   |


🔗 Live Dashboard

Access the fully interactive Power BI dashboard here:
👉 [Open Power BI Report](https://app.powerbi.com/groups/me/reports/9a1ea984-3200-4827-9905-dca2399fe0ca/cca3bfa911b9dadf3896?experience=power-bi)

🧩 Dashboard Features

KPI Cards for total revenue, profit, units sold, and margin

Time series charts to visualize trends across years

Stacked bar charts for product/category performance

Region-wise profit heatmap

Filters for Year, Category, Region, and Customer Segment

💼 About Me

I’m an aspiring data analyst with a background in finance and a passion for turning raw data into business intelligence. This project is part of my journey to transition from finance into data analytics.
