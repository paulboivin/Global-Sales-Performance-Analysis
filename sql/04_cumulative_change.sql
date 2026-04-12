-- Query: Cumulative Revenue Change (2022–2024)
-- Purpose: Calculates the total percentage change in revenue from the first
-- to the final year of the dataset.
-- Business Question: What is the cumulative revenue decline over three years?

SELECT
    -- This is more accurate than adding individual YoY percentages together,
    -- which would overstate the decline due to compounding on a shrinking base.
    ROUND((MIN(CASE WHEN Year = 2024 THEN Total_Revenue END) /
           MIN(CASE WHEN Year = 2022 THEN Total_Revenue END) - 1) * 100, 2) 
    AS Cumulative_Change_Pct
FROM (
    -- Subquery aggregates total revenue per year before the outer query
    -- calculates the change between the first and last year.
    SELECT Year, SUM(Total_Revenue) AS Total_Revenue
    FROM Global_Sales_Performance_Cleaned
    GROUP BY Year
);