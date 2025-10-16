-- Top selling products
SELECT 
products.product_name product,
orders.product_id,
SUM(quantity) total_units,
SUM(total_gbp) revenue
FROM orders
JOIN products on orders.product_id = products.product_id 
GROUP BY orders.product_id, products.product_name
ORDER BY total_units DESC, revenue DESC
LIMIT 10