-- NOTE:
-- These queries are executed using SQLite within Python (sqlite3)
-- Table name used: sales

-- Q1: Top Region by Sales
SELECT Region, SUM(Sales_Amount) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Q2: Top Product Category
SELECT Product_Category, SUM(Sales_Amount) AS Total_Sales
FROM sales
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- Q3: Monthly Sales Trend
SELECT Month, SUM(Sales_Amount) AS Monthly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

-- Q4: Top Sales Representative
SELECT Sales_Rep, SUM(Sales_Amount) AS Total_Sales
FROM sales
GROUP BY Sales_Rep
ORDER BY Total_Sales DESC;

-- Q5: Profit by Region
SELECT Region, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Q6: Payment Method Usage
SELECT Payment_Method, COUNT(*) AS Usage_Count
FROM sales
GROUP BY Payment_Method
ORDER BY Usage_Count DESC;

-- Q7: Sales Channel Performance
SELECT Sales_Channel, SUM(Sales_Amount) AS Total_Sales
FROM sales
GROUP BY Sales_Channel;