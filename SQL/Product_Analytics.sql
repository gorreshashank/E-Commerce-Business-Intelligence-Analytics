 Top 10 products by revenue      
  SELECT
    product_name,
    ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

 Top 10 products by profit
SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

Which products are causing losses?
SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_loss
FROM orders
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_loss;

Top product in each category
WITH ranked_products AS
(
SELECT
    category,
    product_name,
    SUM(sales) revenue,
    ROW_NUMBER() OVER
    (
        PARTITION BY category
        ORDER BY SUM(sales) DESC
    ) rn
FROM orders
GROUP BY category, product_name
)

SELECT *
FROM ranked_products
WHERE rn = 1;


