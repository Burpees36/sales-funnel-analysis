-- Product Analysis 

-- 1. For March deals, identify the top product by revenue and compare it to the top by units sold
SELECT product, SUM(close_value) as revenue
FROM sales_pipeline
WHERE MONTH(engage_date) = 3
GROUP BY product
ORDER BY revenue DESC;


SELECT product, COUNT(product)
FROM sales_pipeline
WHERE MONTH(engage_date) = 3
GROUP BY product
ORDER BY product DESC;


-- 2. Calculate the average difference between "sales_price" and "close_value" for each product, and note if the results suggest a data issue
SELECT * 
FROM sales_pipeline;
SELECT * 
FROM products;

SELECT sales.product, SUM(sales.close_value) as total_close, SUM(products.sales_price) as total_sales
FROM sales_pipeline as sales
JOIN products
ON sales.product = products.product
GROUP BY sales.product;

-- 3. Calculate total revenue by product series and compare their performance
SELECT  products.series as product, SUM(sales.close_value) as revenue
FROM products
JOIN sales_pipeline as sales
ON products.product = sales.product 
GROUP BY products.series
ORDER BY revenue DESC;
