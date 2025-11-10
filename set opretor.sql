CREATE TABLE student_a (
    student_id INT,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO student_a (student_id, student_name, city) VALUES
(1, 'Ajeet Sharma', 'Delhi'),
(2, 'Rahul Verma', 'Mumbai'),
(3, 'Priya Singh', 'Pune'),
(4, 'Neha Patel', 'Delhi');


CREATE TABLE student_b (
    student_id INT,
    student_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO student_b (student_id, student_name, city) VALUES
(3, 'Priya Singh', 'Pune'),
(4, 'Neha Patel', 'Delhi'),
(5, 'Rohit Mehra', 'Kolkata'),
(6, 'Simran Kaur', 'Chandigarh');


select * from student_a;
select * from student_b;


--  union - combine and remove dublicate
select student_name , city
from student_a
union
select student_name , city
from student_b;

-- union all , intersect , and except

 

