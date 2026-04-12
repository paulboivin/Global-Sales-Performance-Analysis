-- Query: Revenue By Category Per Region.
-- Purpose: Calculates total revenue by category for each region.
-- Business Question: What product categories are the top sellers by region? 

SELECT
    Region,
    Product_Category,
    ROUND(SUM(Total_Revenue), 2) AS Total_Revenue,
    ROUND(SUM(Units_Sold), 0) AS Total_Units_Sold,
    ROUND(AVG(Unit_Price), 2) AS Avg_Unit_Price
FROM Global_Sales_Performance_Cleaned
GROUP BY Region, Product_Category
ORDER BY Region, Total_Revenue DESC;
