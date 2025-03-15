/*
SQL -> Structured Query Language

Structured Query Language is a domain-specific language
used to manage data, especially in a relational database 
management system. It is particularly useful in handling
structured data, i.e., data incorporating relations among
entities and variables.

*/

# Creating Database
CREATE DATABASE schoolDB;

# Use the created Database
USE schoolDB;

# Create Tables in the Database
CREATE TABLE students(
	student_id int PRIMARY KEY,
    student_first_name varchar(25),
    student_last_name varchar(25),
    student_class int,
    student_medium varchar(25),
    admission_date date,
    paid_tution_fees decimal(5,2),
    due_tution_fees decimal(5,2)
);

# Check the Database
SHOW DATABASES;

# Check the Table 
SHOW TABLES;

# Insert Values into Tables
INSERT INTO students VALUES
(1,'Ahsun','Ahmed',5,'Bengali','2012-03-15',2500.00,0.00),
(2,'Ahsun1','Ahmed1',6,'Bengali','2012-03-15',3500.00,0.00),
(3,'Ahsun2','Ahmed2',7,'Bengali',NULL,5500.00,NULL);

# Check the Table Data
SELECT * FROM students;

# Updating Table Data
UPDATE students
SET paid_tution_fees = 500.00
WHERE student_id = 1;

# Check the Table Again
SELECT * FROM students;

# Checking Only the NULL Values
SELECT * FROM students
WHERE admission_date is NULL or due_tution_fees is NULL;


# Updating NULL values
UPDATE students
SET admission_date = '2025-03-15' and due_tution_fees = 0.00
WHERE student_id = 3;

# Check the Table Values Again
SELECT * FROM students;


# Deleting Rows from Table
DELETE FROM students
WHERE student_id = 3;

# Check If Deleted or not
SELECT * FROM students;

# Deleting ALL Rows Using Particular Condtions
DELETE FROM students
WHERE due_tution_fees = 0.00;

# Check the Tables Values Again
SELECT * FROM students;

# DELETE the Table
DROP table students;

# Check Available Tables
SHOW TABLES;

# Delete the Database
DROP DATABASE schooldb;

# Check Available Databases
SHOW DATABASES;










