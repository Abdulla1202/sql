CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    quantity INT
);


INSERT INTO products (product_id, product_name, category, price, quantity) VALUES
(101, 'Laptop', 'Electronics', 55000.00, 10),
(102, 'Smartphone', 'Electronics', 25000.00, 30),
(103, 'Headphones', 'Accessories', 2000.00, 50),
(104, 'Keyboard', 'Accessories', 1500.00, 40),
(105, 'Refrigerator', 'Home Appliances', 30000.00, 5),
(106, 'Microwave', 'Home Appliances', 10000.00, 8),
(107, 'Tablet', 'Electronics', 18000.00, 20),
(108, 'Smartwatch', 'Accessories', 8000.00, 25);

select * from products;

select sum(quantity) as quan_ele
from products
where category = 'Electronics' and price > 20000;

SELECT COUNT(*) AS total_products FROM products;
SELECT SUM(price) AS total_price FROM products;
SELECT AVG(price) AS avg_price FROM products;
SELECT MAX(price) AS highest_price FROM products;
SELECT MIN(price) AS lowest_price FROM products;


SELECT UPPER(product_name) AS upper_name FROM products;
SELECT LOWER(category) AS lower_category FROM products;
SELECT LENGTH(product_name) AS name_length FROM products;









