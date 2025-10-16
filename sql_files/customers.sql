-- Most loyal customers
SELECT 
orders.customer_id,
email,
COUNT(orders.customer_id) total_orders,
SUM(total_gbp) customer_revenue
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY orders.customer_id, email
HAVING COUNT(orders.customer_id)  > 10
ORDER BY total_orders DESC, customer_revenue DESC
LIMIT 10


-- churning customers
SELECT 
orders.customer_id,
email,
COUNT(orders.customer_id) total_orders,
SUM(total_gbp) customer_revenue
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY orders.customer_id, email
HAVING COUNT(orders.customer_id)  < 5
ORDER BY total_orders ASC, customer_revenue ASC
LIMIT 10