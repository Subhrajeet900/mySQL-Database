CREATE DATABASE subhrajeet;

USE subhrajeet;
CREATE TABLE student(
id INT PRIMARY KEY ,
name VARCHAR(50),
validity TINYINT,
age INT NOT NULL
);

INSERT INTO student (id , name , validity , age) VALUES(1,'raj',20);
INSERT INTO student (id , name , validity , age) VALUES(2,'malhotra',26);
INSERT INTO student (id , name , validity , age) VALUES(3,'arpan',30);

SELECT * FROM student;




