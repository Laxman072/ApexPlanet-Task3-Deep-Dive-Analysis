-- ApexPlanet Internship - Task 3
-- Deep-Dive Analysis & Interactive Dashboard
-- Table: sales_cleaned

-- 1. Core KPI validation
SELECT
    COUNT(*) AS Total_Records,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    COUNT(DISTINCT Customer_ID) AS Total_Customers,
    SUM(Quantity) AS Total_Quantity,
    SUM(Total_Sales) AS Total_Revenue,
    ROUND(SUM(Total_Sales) / COUNT(DISTINCT Order_ID), 2) AS Average_Order_Value
FROM sales_cleaned;

-- 2. Product performance
SELECT Product,
       SUM(Total_Sales) AS Total_Revenue,
       SUM(Quantity) AS Total_Quantity,
       ROUND(AVG(Total_Sales), 2) AS Average_Revenue_Per_Record
FROM sales_cleaned
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- 3. Product revenue share
SELECT Product,
       SUM(Total_Sales) AS Total_Revenue,
       ROUND(SUM(Total_Sales) * 100.0 /
             (SELECT SUM(Total_Sales) FROM sales_cleaned), 2) AS Revenue_Share_Percent
FROM sales_cleaned
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- 4. City performance
SELECT City,
       SUM(Total_Sales) AS Total_Revenue,
       SUM(Quantity) AS Total_Quantity,
       COUNT(DISTINCT Order_ID) AS Total_Orders
FROM sales_cleaned
GROUP BY City
ORDER BY Total_Revenue DESC;

-- 5. Age-group revenue
SELECT
    CASE
        WHEN Age BETWEEN 18 AND 24 THEN '18-24'
        WHEN Age BETWEEN 25 AND 34 THEN '25-34'
        WHEN Age BETWEEN 35 AND 44 THEN '35-44'
        WHEN Age BETWEEN 45 AND 54 THEN '45-54'
        WHEN Age BETWEEN 55 AND 65 THEN '55-65'
        ELSE 'Unknown'
    END AS Age_Group,
    SUM(Total_Sales) AS Total_Revenue,
    COUNT(*) AS Records
FROM sales_cleaned
GROUP BY Age_Group
ORDER BY Total_Revenue DESC;

-- 6. Gender revenue
SELECT Gender,
       SUM(Total_Sales) AS Total_Revenue,
       COUNT(DISTINCT Customer_ID) AS Customers
FROM sales_cleaned
GROUP BY Gender
ORDER BY Total_Revenue DESC;

-- 7. Top 10 customers
SELECT Customer_ID,
       MAX(Customer_Name) AS Customer_Name,
       SUM(Total_Sales) AS Total_Spending,
       COUNT(DISTINCT Order_ID) AS Orders
FROM sales_cleaned
GROUP BY Customer_ID
ORDER BY Total_Spending DESC
LIMIT 10;

-- 8. Customer revenue segmentation
WITH customer_revenue AS (
    SELECT Customer_ID,
           MAX(Customer_Name) AS Customer_Name,
           SUM(Total_Sales) AS Total_Revenue
    FROM sales_cleaned
    GROUP BY Customer_ID
)
SELECT
    CASE
        WHEN Total_Revenue < 100000 THEN 'Low Value'
        WHEN Total_Revenue < 250000 THEN 'Medium Value'
        WHEN Total_Revenue < 400000 THEN 'High Value'
        ELSE 'Very High Value'
    END AS Customer_Segment,
    COUNT(*) AS Customers,
    SUM(Total_Revenue) AS Segment_Revenue
FROM customer_revenue
GROUP BY Customer_Segment
ORDER BY Segment_Revenue DESC;

-- 9. Product x Age Group
SELECT Product,
       CASE
           WHEN Age BETWEEN 18 AND 24 THEN '18-24'
           WHEN Age BETWEEN 25 AND 34 THEN '25-34'
           WHEN Age BETWEEN 35 AND 44 THEN '35-44'
           WHEN Age BETWEEN 45 AND 54 THEN '45-54'
           WHEN Age BETWEEN 55 AND 65 THEN '55-65'
           ELSE 'Unknown'
       END AS Age_Group,
       SUM(Total_Sales) AS Total_Revenue,
       SUM(Quantity) AS Total_Quantity
FROM sales_cleaned
GROUP BY Product, Age_Group
ORDER BY Product, Total_Revenue DESC;

-- 10. City x Product
SELECT City, Product, SUM(Total_Sales) AS Total_Revenue
FROM sales_cleaned
GROUP BY City, Product
ORDER BY City, Total_Revenue DESC;

-- 11. Transaction-level dataset for Power BI
SELECT Order_ID, Customer_ID, Customer_Name, Product, Quantity,
       Unit_Price, Total_Sales, Age, Gender, City
FROM sales_cleaned;
