-- Customers TABLE
ALTER TABLE customers
ALTER COLUMN signup_date TYPE DATE

-- Orders 
ALTER TABLE orders
ALTER COLUMN order_date TYPE DATE
USING order_date::DATE;

ALTER TABLE orders
ALTER COLUMN total_gbp TYPE NUMERIC(10,2) USING total_gbp::NUMERIC;

ALTER TABLE orders
ALTER COLUMN quantity TYPE NUMERIC USING quantity::NUMERIC;

-- Products TABLE
ALTER TABLE products
ALTER COLUMN product_id TYPE VARCHAR(8)

ALTER TABLE products
ALTER COLUMN price_gbp TYPE NUMERIC(10,2) USING price_gbp::NUMERIC;




