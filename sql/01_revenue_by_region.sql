-- Query: Revenue By Region.
-- Purpose: Calculates total annual revenue by region
-- Business Question: Which regions generate the most and least revenue? 

SELECT 
    Region,
    ROUND(SUM(Total_Revenue), 2) AS Total_Revenue,
    ROUND(SUM(Total_Revenue) * 100.0 / SUM(SUM(Total_Revenue)) OVER (), 2) AS Revenue_Share_Pct
FROM Global_Sales_Performance_Cleaned
GROUP BY Region
ORDER BY Total_Revenue DESC;