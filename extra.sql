-- Create a new database named 'collage'
CREATE DATABASE school;

-- Switch to the 'collage' database
USE school;

-- Create a 'student' table with relevant fields
CREATE TABLE children(
    rollno INT PRIMARY KEY,         -- Unique roll number (Primary Key)
    name VARCHAR(50),               -- Student's name
    marks INT NOT NULL,             -- Marks (cannot be NULL)
    grade VARCHAR(2),               -- Grade (like A, B+, etc.)
    city VARCHAR(30)                -- City of the student
);

-- Insert 5 sample records into the student table
INSERT INTO children
(rollno, name, marks, grade, city) 
VALUES
(101, 'Ayesha', 92, 'A', 'Delhi'),
(102, 'Rohan', 76, 'B', 'Mumbai'),
(103, 'Neha', 84, 'B+', 'Delhi'),
(104, 'Arjun', 59, 'C', 'Delhi'),
(105, 'Priya', 98, 'A+', 'Bengaluru');

-- having clause.
SELECT city , count(rollno)
FROM children
GROUP BY city
HAVING MAX(marks) >90;

-- by general order
SELECT city
FROM children
WHERE grade = "A" OR "B"
GROUP BY city
HAVING MAX(marks) >=90
ORDER BY city ASC;


-- general order..
-- 1.SELECT    (coloumn_name)
-- 2.FROM      (table_name)
-- 3.WHERE     (condition)
-- 4.GROUP BY  (coloumn_name)
-- 5.HAVING    (condtition)
-- 6.ORDER BY  (coloumn_name) ASC


-- UPDATE clause.
SET SQL_SAFE_UPDATES =0;
UPDATE children
SET grade = "O"
WHERE grade = "A";

UPDATE children
SET marks = marks +2;

-- delete clause
DELETE FROM children
WHERE marks <70;

SELECT * FROM children;

