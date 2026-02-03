-- Drop tables if they exist
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

-- Create Department table
CREATE TABLE Department(
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(30)
);

-- Create Employee table
CREATE TABLE Employee(
    emp_no VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(30),
    designation VARCHAR(20),
    salary INT,
    mob VARCHAR(15),
    dept_no VARCHAR(10),
    FOREIGN KEY(dept_no) REFERENCES Department(dept_no)
);

-- Insert data into Department
INSERT INTO Department VALUES('dp01','HR');
INSERT INTO Department VALUES('dp02','Finance');
INSERT INTO Department VALUES('dp03','IT');
INSERT INTO Department VALUES('dp04','Marketting');

-- Insert data into Employee
INSERT INTO Employee VALUES('emp01','Veena','Analyst',30000,'999999999','dp02');
INSERT INTO Employee VALUES('emp02','Anu','Manager',45000,'9797969594','dp01');
INSERT INTO Employee VALUES('emp03','Arun','Clerk',15000,'9797531594','dp02');
INSERT INTO Employee VALUES('emp04','Asha','Analyst',28000,'9794671594','dp03');
INSERT INTO Employee VALUES('emp05','Ravi','Manager',45000,'9794098004','dp03');
INSERT INTO Employee VALUES('emp06','Neha','Clerk',5000,'0964098004','dp04');
INSERT INTO Employee VALUES('emp07','Amal','Analyst',22000,'0075476004','dp01');
INSERT INTO Employee VALUES('emp08','John','Clerk',18000,'0071234504','dp04');
INSERT INTO Employee VALUES('emp09','Kiran','Manager',45000,'0071235504','dp02');
INSERT INTO Employee VALUES('emp10','Diddy','Analyst',32000,'0071333304','dp03');

-- Select queries
SELECT * FROM Department;
SELECT * FROM Employee;

-- Filtering examples
SELECT emp_no, emp_name FROM Employee WHERE dept_no='dp02';
SELECT emp_no, emp_name, designation, dept_no, salary FROM Employee ORDER BY salary DESC;
SELECT emp_no, emp_name FROM Employee WHERE salary BETWEEN 20000 AND 30000;
SELECT DISTINCT designation FROM Employee;
SELECT emp_name, mob FROM Employee WHERE emp_name LIKE 'A%';
SELECT * FROM Employee WHERE LENGTH(emp_name) >= 3 AND salary > 20000;
SELECT * FROM Employee WHERE emp_no IN('emp01','emp02','emp03');
SELECT emp_no, emp_name FROM Employee WHERE salary BETWEEN 10000 AND 30000;
SELECT emp_name FROM Employee WHERE designation IN('Manager','Analyst');

-- Aggregate functions
SELECT dept_no, COUNT(*) AS total_employees FROM Employee GROUP BY dept_no;
SELECT dept_no, AVG(salary) AS avg_salary FROM Employee GROUP BY dept_no;
SELECT dept_no, SUM(salary) AS total_salary FROM Employee GROUP BY dept_no;
SELECT dept_no, MAX(salary) AS highest_salary, MIN(salary) AS lowest_salary FROM Employee GROUP BY dept_no;
SELECT dept_no, AVG(salary) AS average_salary FROM Employee WHERE dept_no<>'dp01' GROUP BY dept_no;
SELECT dept_no, AVG(salary) AS average_salary FROM Employee WHERE dept_no<>'dp01' GROUP BY dept_no HAVING AVG(salary)>20000 ORDER BY average_salary ASC;

-- Update examples
UPDATE Employee SET salary=45000 WHERE designation='Manager';
UPDATE Employee SET mob='999999999' WHERE emp_name='Veena';

-- Delete example
DELETE FROM Employee WHERE salary=5000;
