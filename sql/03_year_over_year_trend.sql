-- Query: Year-Over-Year Revenue Trend
-- Purpose: Calculates total annual revenue and the change from the prior year.
-- Business Question: What does the year-over-year revenue trend look like?

SELECT
    Year,
    ROUND(SUM(Total_Revenue), 2) AS Total_Revenue,
    -- LAG() looks back at the previous row's value to calculate the difference.
    ROUND(SUM(Total_Revenue) - LAG(SUM(Total_Revenue)) OVER (ORDER BY Year), 2) AS YoY_Change,
    -- Expresses the change as a percentage of the prior year's revenue.
    ROUND((SUM(Total_Revenue) - LAG(SUM(Total_Revenue)) OVER (ORDER BY Year)) 
        * 100.0 / LAG(SUM(Total_Revenue)) OVER (ORDER BY Year), 2) AS YoY_Change_Pct
FROM Global_Sales_Performance_Cleaned
GROUP BY Year
ORDER BY Year;
-- Note: The 2022 row returns NULL for YoY_Change and YoY_Change_Pct
-- because there is no prior year to compare against it.