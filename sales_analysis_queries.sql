-- View first 10 rows
SELECT *
FROM sales_data
LIMIT 10;

-- Total revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM sales_data;

-- Revenue by region
SELECT Region,
       SUM(Revenue) AS Total_Revenue
FROM sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC;

-- Top 5 best-selling products
SELECT "Product Name",
       SUM(Quantity) AS Total_Units_Sold
FROM sales_data
GROUP BY "Product Name"
ORDER BY Total_Units_Sold DESC
LIMIT 5;

-- Average profit by product category
SELECT "Product Category",
       ROUND(AVG(Profit), 2) AS Average_Profit
FROM sales_data
GROUP BY "Product Category"
ORDER BY Average_Profit DESC;

-- Orders with revenue greater than 5000
SELECT "Order ID",
       Region,
       Revenue
FROM sales_data
WHERE Revenue > 5000
ORDER BY Revenue DESC;

-- Monthly revenue analysis
SELECT strftime('%m', "Order Date") AS Month,
       SUM(Revenue) AS Monthly_Revenue
FROM sales_data
GROUP BY Month
ORDER BY Month;
