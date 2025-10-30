INSERT INTO customers (customer_name, city) VALUES
('Akanksha', 'Hyderabad'),
('Rahul', 'Bangalore'),
('Sneha', 'Mumbai'),
('Karan', 'Delhi');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000),
('Mouse', 'Electronics', 800),
('Headphones', 'Electronics', 2500),
('Shoes', 'Fashion', 3000),
('T-shirt', 'Fashion', 1200);

INSERT INTO orders (customer_id, order_date) VALUES
(1, '2025-10-25'),
(2, '2025-10-26'),
(3, '2025-10-27'),
(1, '2025-10-27'),
(4, '2025-10-28');

INSERT INTO order_details (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 2),
(4, 5, 3),
(5, 1, 1),
(5, 3, 2);


SELECT 
    o.order_date,
    SUM(p.price * od.quantity) AS daily_total
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY o.order_date
ORDER BY o.order_date;

SELECT 
    AVG(order_total) AS avg_transaction_value
FROM (
    SELECT 
        o.order_id,
        SUM(p.price * od.quantity) AS order_total
    FROM orders o
    JOIN order_details od ON o.order_id = od.order_id
    JOIN products p ON od.product_id = p.product_id
    GROUP BY o.order_id
) AS subquery;

SELECT 
    p.product_name,
    SUM(p.price * od.quantity) AS total_revenue
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 3;


SELECT 
    c.city,
    SUM(p.price * od.quantity) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.city
ORDER BY total_sales DESC;


