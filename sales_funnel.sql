-- Pipeline Metrics
USE sales_funnel;

-- 1. Calculate the number of sales opportunities created each month using "engage_date", and identify the month with the most opportunities
SELECT MONTH(engage_date) as Month, COUNT(engage_date) as Sales 
FROM sales_pipeline
GROUP BY MONTH(engage_date)
ORDER BY COUNT(*) DESC;

-- 2. Find the average time deals stayed open (from "engage_date" to "close_date"), and compare closed deals versus won deals
SELECT deal_stage, AVG(DATEDIFF(close_date, engage_date)) as avg_days
FROM sales_pipeline
GROUP BY deal_stage
ORDER BY 2;

-- 3. Calculate the percentage of deals in each stage, and determine what share were lost
SELECT AVG(CASE WHEN deal_stage='Won' THEN 1 ELSE 0 END) AS win_rate
FROM sales_pipeline;


-- 4. Compute the win rate for each product, and identify which one had the highest win rate
SELECT AVG(CASE WHEN deal_stage='Won' THEN 1 ELSE 0 END) AS win_rate, product
FROM sales_pipeline
GROUP BY product
ORDER BY win_rate DESC;

