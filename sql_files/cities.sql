-- Top selling cities
SELECT 
city,
SUM(total_gbp) city_revenue
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY city
ORDER BY  city_revenue DESC
LIMIT 5