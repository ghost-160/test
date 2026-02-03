-- 1. Create database
CREATE DATABASE college;
USE college;

-- 2. Create student table
CREATE TABLE student (
    roll_no INT(10),
    name VARCHAR(25),
    dob DATE,
    place VARCHAR(30),
    ph_no BIGINT(12)
);

-- 3. Create course table
CREATE TABLE course (
    course_code VARCHAR(8),
    course_name VARCHAR(30),
    credit INT(10)
);

-- 4. Show tables
SHOW TABLES;

-- 5. Describe tables
DESC student;
DESC course;

-- 6. Alter student table
-- a) Drop ph_no
ALTER TABLE student DROP COLUMN ph_no;

-- b) Add aadhar
ALTER TABLE student ADD COLUMN aadhar VARCHAR(20);

-- c) Modify roll_no to VARCHAR(5)
ALTER TABLE student MODIFY COLUMN roll_no VARCHAR(5);

-- 7. Insert data into student
INSERT INTO student (roll_no, name, dob, place, aadhar)
VALUES ('1','Ghost','2000-11-26','kottayam','123456781234');

-- 8. Select queries
SELECT * FROM student;
SELECT name FROM student;

-- 9. Drop student table
DROP TABLE student;

-- 10. Drop database
DROP DATABASE college;





--program 2

-- --------------------------
-- COLLEGE DATABASE SECTION
-- --------------------------
CREATE DATABASE college;
USE college;

CREATE TABLE student (
    roll_no INT(10),
    name VARCHAR(25),
    dob DATE,
    place VARCHAR(30),
    ph_no BIGINT(12)
);

CREATE TABLE course (
    course_code VARCHAR(8),
    course_name VARCHAR(30),
    credit INT(10)
);

SHOW TABLES;

DESC student;
DESC course;

ALTER TABLE student DROP COLUMN ph_no;
ALTER TABLE student ADD COLUMN aadhar VARCHAR(20);
ALTER TABLE student MODIFY COLUMN roll_no VARCHAR(5);

INSERT INTO student (roll_no, name, dob, place, aadhar)
VALUES ('1','Ghost','2000-11-26','kottayam','123456781234');

SELECT * FROM student;
SELECT name FROM student;

DROP TABLE student;
DROP DATABASE college;

-- --------------------------
-- JOB DATABASE SECTION
-- --------------------------
CREATE DATABASE IF NOT EXISTS job;
USE job;

CREATE TABLE employee (
    emp_no INT(5),
    emp_name VARCHAR(25),
    place VARCHAR(30),
    ph_no BIGINT(12),
    dept_name VARCHAR(30),
    job_id INT(5),
    salary INT(10)
);

DESC employee;

CREATE TABLE department (
    dept_no INT(5),
    emp_no INT(5),
    emp_name VARCHAR(25)
);

ALTER TABLE employee ADD hire_date DATE;
ALTER TABLE employee MODIFY COLUMN job_id VARCHAR(10);
ALTER TABLE employee CHANGE emp_no e_no INT(5);
ALTER TABLE employee MODIFY COLUMN job_id VARCHAR(50);
ALTER TABLE employee ADD PRIMARY KEY (e_no);
ALTER TABLE employee DROP COLUMN hire_date;

RENAME TABLE employee TO emp;
TRUNCATE TABLE emp;

SHOW TABLES;
DESC emp;
DESC department;
