-- Account Analysis

-- 1. Calculate revenue by office location, and identify the lowest performer
SELECT office_location, SUM(revenue) as revenue
FROM accounts
GROUP BY office_location
ORDER BY revenue;

-- 2. Calculate revenue and number of accounts by sector
SELECT sector, COUNT(sector) accounts, SUM(revenue) as revenue
FROM accounts
GROUP BY sector
ORDER BY 3 DESC;

-- 3. Which accounts that were subsidaries had the most lost sales opportunities?
SELECT a.account, count(sales.opportunity_id) as opportunities_lost
FROM accounts as a
LEFT JOIN sales_pipeline as sales
ON a.account=sales.account
WHERE a.subsidiary_of != '' and sales.deal_stage='lost'
GROUP BY a.account
ORDER BY 2 DESC; 

-- 4. Join companies to their subsidaries. Which had the highest total revenue?
WITH company_parent AS (
SELECT account, CASE WHEN subsidiary_of = '' then account ELSE subsidiary_of END as parent_company
FROM accounts
)

, won_deals AS (
SELECT sp.account, sp.close_value
FROM sales_pipeline as sp
WHERE sp.deal_stage = 'won'
)

SELECT cp.parent_company, SUM(wd.close_value) as total_revenue
FROM company_parent as cp
LEFT JOIN won_deals as wd
ON wd.account=cp.account
GROUP BY cp.parent_company
ORDER BY total_revenue DESC;



