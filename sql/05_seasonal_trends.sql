-- Query: Seasonal Revenue Trends by Month
-- Purpose: Identifies monthly revenue patterns across all three years combined,
-- including transaction count and revenue per transaction.
-- Business Question: Are there seasonal trends in sales across markets?

SELECT
	-- strftime() extracts a specific part of a date value.
    -- '%m' returns the two-digit month number (01 through 12).
    -- Used here to group transactions by month regardless of year.
    strftime('%m', Date) AS Month_Num,
    -- CASE converts the numeric month into a readable month name for presentation.
    -- Without this the output would show 01, 02, 03 etc. instead of January, February etc.
    CASE strftime('%m', Date)
        WHEN '01' THEN 'January'
        WHEN '02' THEN 'February'
        WHEN '03' THEN 'March'
        WHEN '04' THEN 'April'
        WHEN '05' THEN 'May'
        WHEN '06' THEN 'June'
        WHEN '07' THEN 'July'
        WHEN '08' THEN 'August'
        WHEN '09' THEN 'September'
        WHEN '10' THEN 'October'
        WHEN '11' THEN 'November'
        WHEN '12' THEN 'December'
    END AS Month_Name,
    COUNT(*) AS Transaction_Count,
    ROUND(SUM(Total_Revenue), 2) AS Total_Revenue,
    ROUND(AVG(Total_Revenue), 2) AS Avg_Transaction_Revenue,
    -- Revenue_Per_Transaction divides total revenue by transaction count
    -- to measure average deal size per month, independent of volume.
    -- December's high value here despite low transaction count indicates
    -- a concentration of high-value end-of-year procurement activity.
    ROUND(SUM(Total_Revenue) / COUNT(*), 2) AS Revenue_Per_Transaction
FROM Global_Sales_Performance_Cleaned
	-- Ordering by Month_Num ensures chronological order (Jan through Dec)
	-- rather than alphabetical order by month name.
GROUP BY Month_Num
ORDER BY Revenue_Per_Transaction DESC;