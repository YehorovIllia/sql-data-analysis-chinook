----------------------------------------------------------------
-- CHAPTER 1: GLOBAL MARKET ANALYSIS
-- Goal: Identify high-value markets based on total revenue and average check.
----------------------------------------------------------------
SELECT I.Billingcountry       AS Country_Revenue
     , SUM(I.Total)           AS Total_Sales
     , ROUND(AVG(I.Total), 2) AS Avg_Check
     , COUNT(I.Total)         AS Nmb_Purchases
FROM Invoice I
GROUP BY Billingcountry
ORDER BY Total_Sales DESC;
----------------------------------------------------------------
-- Insight: This query helps to distinguish between high-volume markets 
-- and high-value markets (where the average check is higher).
----------------------------------------------------------------
