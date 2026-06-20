# Who are the top 10 customers contributing most revenue?

SELECT
    `Customer Name`,
    ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY `Customer Name`
ORDER BY revenue DESC
LIMIT 10;

 Which customers generate high revenue but low profit?
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY customer_name
ORDER BY revenue DESC;

 Which customers place the most orders?
SELECT
    customer_name,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY customer_name
ORDER BY revenue DESC;

 What is the Customer Lifetime Value (CLV)?
SELECT
    customer_id,
    customer_name,
    ROUND(SUM(sales),2) AS customer_lifetime_value
FROM orders
GROUP BY customer_id, customer_name
ORDER BY customer_lifetime_value DESC;

 Which customers have the highest average order value?
SELECT
    customer_name,
    ROUND(SUM(sales)/COUNT(DISTINCT order_id),2) AS avg_order_value
FROM orders
GROUP BY customer_name
ORDER BY avg_order_value DESC
LIMIT 10;


