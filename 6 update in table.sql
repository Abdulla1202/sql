CREATE TABLE users (
    user_id INT PRIMARY KEY,         -- unique ID for each user
    user_name VARCHAR(50) NOT NULL,                 -- cannot be null
    email VARCHAR(100) NOT NULL UNIQUE,             -- must be unique
    age INT CHECK (age >= 18),                      -- must be at least 18 years old
    city VARCHAR(50)   DEFAULT 'Unknown'           -- default value if not provided
);

SELECT * FROM users;

	INSERT INTO users (user_id, user_name, email, age, city)
		VALUES
		(101, 'Ajeet Sharma', 'ajeet@gmail.com', 25, 'Delhi'),
		(102, 'Priya Verma', 'priya@gmail.com', 22, 'Mumbai'),
		(103, 'Rahul Singh', 'rahul@gmail.com', 30, 'Bangalore'),
		(104, 'Neha Patel', 'neha@gmail.com', 27, 'Pune'),
		(105, 'Amit Kumar', 'amit@gmail.com', 29, 'Hyderabad');

UPDATE USERS
SET AGE = 22
WHERE USER_NAME = 'Neha Patel'; 

UPDATE USERS
SET AGE  = AGE + 1
WHERE user_name LIKE 'Amit%';

SELECT * FROM USERS ORDER BY USER_ID ASC;
SELECT * FROM users;
