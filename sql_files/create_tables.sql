CREATE TABLE customers (
    customer_id TEXT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    city TEXT,
    postcode TEXT,
    country TEXT,
    signup_date DATE
);

CREATE TABLE products (
    product_id TEXT,
    product_name TEXT,
    category TEXT,
    price_gbp TEXT
);

CREATE TABLE orders (
    order_id TEXT,
    customer_id TEXT,
    product_id TEXT,
    quantity TEXT,
    order_date TEXT,
    total_gbp TEXT
);
