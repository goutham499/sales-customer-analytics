-- Monthly revenue
SELECT MONTH(order_date) AS month, SUM(amount) AS revenue
FROM sales
GROUP BY MONTH(order_date);

-- Top customers
SELECT customer_name, SUM(amount) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 10;

-- Region-wise revenue
SELECT region, SUM(amount) AS revenue
FROM sales
GROUP BY region;
