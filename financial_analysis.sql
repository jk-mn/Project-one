-- Query 1: Total Revenue, Total Profit, and Profit Margin
SELECT 
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit,
    (SUM(profit) / SUM(sales) * 100) AS profit_margin
FROM superstore;

-- Query 2: Revenue and Profit by Year and Month
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS year_month,
    SUM(sales) AS revenue,
    SUM(profit) AS profit
FROM superstore
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY year_month;


-- Query 3: Revenue and Profit by Category and Region
SELECT 
    category,
    region,
    SUM(sales) AS revenue,
    SUM(profit) AS profit,
    (SUM(profit) / SUM(sales) * 100) AS profit_margin
FROM superstore
GROUP BY category, region
ORDER BY revenue DESC;

-- Query 4: Top 5 Cities by Profit (using city as proxy for store)
SELECT 
    city,
    SUM(profit) AS total_profit
FROM superstore
GROUP BY city
ORDER BY total_profit DESC
LIMIT 5;

-- Query 5: Test Query (Sample for Revenue by Year and Month)
SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS year_month,
    SUM(sales) AS revenue,
    SUM(profit) AS profit
FROM superstore
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY year_month
LIMIT 10;


SELECT 
        category,
        region,
        SUM(sales) AS revenue,
        SUM(profit) AS profit,
        (SUM(profit) / SUM(sales) * 100) AS profit_margin
    FROM superstore
    GROUP BY category, region
    ORDER BY revenue DESC

