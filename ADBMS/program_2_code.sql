-- --------------------------
-- TEST DATABASE SECTION
-- --------------------------
CREATE DATABASE IF NOT EXISTS test;
USE test;

-- 1. Create persons table
CREATE TABLE persons (
    person_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    aadhar VARCHAR(12) NOT NULL UNIQUE,
    age INT CHECK (age > 18)
);

-- 2. Create orders table with foreign key to persons
CREATE TABLE orders (
    order_id INT,
    order_name VARCHAR(50) NOT NULL,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES persons(person_id)
);

-- Drop primary key from orders (if needed later)
ALTER TABLE orders DROP PRIMARY KEY;

-- Show tables and describe
SHOW TABLES;
DESC persons;
DESC orders;

-- 3. Create employee table
CREATE TABLE employee (
    emp_no INT,
    emp_name VARCHAR(50),
    place VARCHAR(30),
    ph_no BIGINT(12),
    dept_name VARCHAR(30),
    job_id INT(5),
    salary INT(10),
    PRIMARY KEY (emp_no)
);

DESC employee;

-- 4. Create department table
CREATE TABLE department (
    dept_no INT,
    emp_no INT(5),
    emp_name VARCHAR(50),
    PRIMARY KEY (dept_no)
);

DESC department;

-- 5. Add foreign key dept_no in employee referencing department
ALTER TABLE employee ADD dept_no INT;

ALTER TABLE employee
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (dept_no)
REFERENCES department(dept_no)
ON DELETE CASCADE;

DESC employee;
