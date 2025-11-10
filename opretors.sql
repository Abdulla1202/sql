CREATE TABLE users (
    user_id INT PRIMARY KEY,         -- unique ID for each user
    user_name VARCHAR(50) NOT NULL,                 -- cannot be null
    email VARCHAR(100) NOT NULL UNIQUE,             -- must be unique
    age INT CHECK (age >= 18),                      -- must be at least 18 years old
    city VARCHAR(50)              -- default value if not provided
);

INSERT INTO users (user_name, email, age, city)
VALUES
('Ajeet Sharma', 'ajeet@gmail.com', 25, 'Delhi'),
('Priya Verma', 'priya@gmail.com', 22, 'Mumbai'),
('Rahul Singh', 'rahul@gmail.com', 30, 'Bangalore'),
('Neha Patel', 'neha@gmail.com', 27, 'Pune'),
('Amit Kumar', 'amit@gmail.com', 29, 'Hyderabad');

alter table users
rename column user_name to full_name;

select * from users order by user_id asc;

-- to chnge datatype of a column 
alter table users
alter column age type smallint; 

-- add not null contrein to city

alter table users
alter column city set not null; 

-- add chek contrain to age

alter table users
aDD CONSTRAINT age CHECK(age>=18); 

-- RENANE TABLE NAME 
ALTER TABLE USERS
RENAME TO CUSTMUERS;

ALTER TABLE USERS
DROP COLUMN SALARY;

ADD COLUMN  SALARY INT;

SELECT 
    FULL_NAME, 
    AGE, 
    (AGE + 1) AS NEW_AGE
FROM USERS;

select * from users
where age > 25;

-- and opretor
select * from users
where age > 25 and user_id > 103;

-- not opretor
select * from users
where not (age < 25);

-- between
select * from users
where age between 20 and 29;

-- like
select * from users
where full_name like '%a';

-- in 
select * from users
where age in (22 , 27);




select * from users order by user_id asc;

drop table if exists student

