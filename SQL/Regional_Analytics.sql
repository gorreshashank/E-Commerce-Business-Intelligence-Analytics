Region-wise Profitability
SELECT
    region,
    ROUND(SUM(sales),2) revenue,
    ROUND(SUM(profit),2) profit
FROM orders
GROUP BY region
ORDER BY profit DESC;

 Most Profitable State
SELECT
    state,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY state
ORDER BY profit DESC;

 Loss Making States
SELECT
    state,
    ROUND(SUM(profit),2) AS loss
FROM orders
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY loss;

Total Profit
SELECT
ROUND(SUM(profit),2) AS total_profit
FROM orders;
