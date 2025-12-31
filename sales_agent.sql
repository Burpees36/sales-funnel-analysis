-- Sales agent performance

-- 1. Calculate the win rate for each sales agent, and find the top performer
SELECT sales_agent, AVG(CASE WHEN deal_stage='Won' THEN 1 ELSE 0 END) as win_rate
FROM sales_pipeline
GROUP BY sales_agent
ORDER BY win_rate DESC;


-- 2. Calculate the total revenue by agent, and see who generated the most
SELECT sales_agent, SUM(close_value) as total_revenue
FROM sales_pipeline
GROUP BY sales_agent
ORDER BY total_revenue DESC;


-- 3. Calculate win rates by manager to determine which manager’s team performed best
SELECT manager, AVG(CASE WHEN sales.deal_stage='Won' THEN 1 ELSE 0 END) as win_rate
FROM sales_pipeline as sales
JOIN sales_teams as teams
ON sales.sales_agent = teams.sales_agent
GROUP BY manager 
ORDER BY win_rate DESC; 


-- 4. For the product GTX Plus Pro, find which regional office sold the most units
SELECT regional_office, COUNT(product) as gtx_plus_pro
FROM sales_pipeline as sales
JOIN sales_teams as teams
ON sales.sales_agent = teams.sales_agent
WHERE product = 'GTX Plus Pro' and deal_stage = 'won'
GROUP BY regional_office
ORDER BY gtx_plus_pro DESC;
