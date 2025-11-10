create database onlinebooksto;


-- Drop tables if already exist
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Books;

-- 1️⃣ BOOKS TABLE
CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100),
    genre VARCHAR(50),
    price NUMERIC(8,2),
    stock INT
);

-- 2️⃣ CUSTOMER TABLE
CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- 3️⃣ ORDERS TABLE (with foreign keys)
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT DEFAULT 1,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- ✅ Insert BOOKS data
INSERT INTO Books (title, author, genre, price, stock) VALUES
('SQL Mastery', 'John Doe', 'Database', 499.00, 20),
('Python Basics', 'Jane Smith', 'Programming', 299.00, 15),
('AI for Beginners', 'Alan Turing', 'Artificial Intelligence', 599.00, 10),
('Data Structures in C', 'Mark Johnson', 'Computer Science', 450.00, 25),
('Web Development 101', 'Emily Davis', 'Web', 350.00, 30),
('Machine Learning Pro', 'Andrew Ng', 'AI/ML', 799.00, 12),
('Cloud Computing Simplified', 'Satya Nadella', 'Cloud', 699.00, 18),
('JavaScript Essentials', 'Ryan Dahl', 'Web', 400.00, 22),
('Deep Learning Secrets', 'Geoffrey Hinton', 'AI/ML', 999.00, 8),
('C++ in Depth', 'Bjarne Stroustrup', 'Programming', 550.00, 16);

-- ✅ Insert CUSTOMERS data
INSERT INTO Customer (name, email, phone, city) VALUES
('Ajeet Sharma', 'ajeet@gmail.com', '9876543210', 'Delhi'),
('Neha Gupta', 'neha@gmail.com', '9123456780', 'Mumbai'),
('Ravi Kumar', 'ravi.kumar@gmail.com', '9800123456', 'Bangalore'),
('Priya Mehta', 'priya.mehta@gmail.com', '9898989898', 'Pune'),
('Ankit Verma', 'ankitv@gmail.com', '9753124680', 'Lucknow'),
('Simran Kaur', 'simrank@gmail.com', '9123098765', 'Chandigarh'),
('Rahul Yadav', 'rahuly@gmail.com', '9990011223', 'Jaipur'),
('Tanya Singh', 'tanya@gmail.com', '9811223344', 'Kolkata'),
('Mohit Jain', 'mohitj@gmail.com', '9822114455', 'Hyderabad'),
('Sneha Patel', 'snehap@gmail.com', '9799001122', 'Ahmedabad');

-- ✅ Insert ORDERS data (foreign keys working)
INSERT INTO Orders (customer_id, book_id, quantity, order_date) VALUES
(1, 2, 1, '2025-10-10'),
(2, 1, 2, '2025-10-11'),
(3, 5, 1, '2025-10-12'),
(4, 3, 1, '2025-10-13'),
(5, 4, 3, '2025-10-13'),
(6, 6, 1, '2025-10-14'),
(7, 9, 2, '2025-10-15'),
(8, 7, 1, '2025-10-15'),
(9, 8, 2, '2025-10-16'),
(10, 10, 1, '2025-10-17'),
(3, 2, 1, '2025-10-17'),
(5, 5, 2, '2025-10-18'),
(7, 3, 1, '2025-10-18'),
(8, 6, 2, '2025-10-18'),
(10, 1, 1, '2025-10-18');


select * from books;
select * from Customer;
select * from orders;

select * from books 
where genre = 'Database';

select * from books 
where price > 499;

select * from Customer
where city = 'Delhi';

select * from orders
where order_date between '2025-10-12' and '2025-10-15';

-- total stock
select sum(stock) as total_stock
from books;

-- sabse mahgi book

select * from books order by price desc limit 1;


-- quantity more then one
select * from orders
where quantity > 1;

-- total no. of book sold each gener

select b.genre, sum(o.quantity) as total_book_sold
from orders o
join books b on o.book_id = b.book_id
group by b.genre;

select * from books;

-- avd price of book in web gener
select avg(price) as avg_price
from books
where genre = 'Web';

