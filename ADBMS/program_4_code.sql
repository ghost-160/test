-- 1. Create Department Table
CREATE TABLE Departmentt (
    Dept_id INT PRIMARY KEY,
    Dept_name VARCHAR(20) NOT NULL
);

-- 2. Create Employee Table
CREATE TABLE Employee (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(50) NOT NULL,
    Design VARCHAR(50),
    Dept_id INT,
    Salary INT,
    Joining_date DATE,
    FOREIGN KEY (Dept_id) REFERENCES Departmentt(Dept_id)
);

-- 3. Insert Data into Departmentt
INSERT INTO Departmentt (Dept_id, Dept_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Admin'),
(5, 'Sales');

-- 4. Insert Data into Employee
INSERT INTO Employee (Emp_id, Emp_name, Design, Dept_id, Salary, Joining_date) VALUES
(110, 'Anitta', 'Typist', 1, 10000, '2000-03-02'),
(111, 'Veena', 'Analyst', 2, 128000, '2001-02-02'),
(112, 'Mariya', 'Typist', 1, 40000, '2000-03-02'),
(113, 'Geethu', 'Typist', 2, 50000, '2001-03-02'),
(114, 'Joseph', 'Cler', 3, 20000, '2002-03-02'),
(115, 'Alen', 'Manager', 3, 42000, '2003-03-02'),
(116, 'Anu', 'Analyst', 2, 30000, '2003-03-02'),
(120, 'Rahul', 'Clerk', NULL, 15000, '2004-01-01');

-- 5. Selection Queries & Joins
-- Basic Inner Join
SELECT e.Emp_name, d.Dept_name 
FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id;

-- Filter by Name
SELECT d.Dept_name 
FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id 
WHERE e.Emp_name = 'Geethu';

-- Filter by Department
SELECT e.Salary 
FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id 
WHERE d.Dept_name = 'HR';

-- Multi-criteria Join
SELECT * FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id 
WHERE e.Design = 'Analyst' AND d.Dept_name = 'IT';

-- 6. Aggregations & Subqueries
-- Find Dept with Max Salary
SELECT DISTINCT d.Dept_name 
FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id 
WHERE e.Salary = (SELECT MAX(Salary) FROM Employee);

-- Depts with Minimum Number of Employees
SELECT Dept_id 
FROM Employee 
GROUP BY Dept_id 
HAVING COUNT(*) = (
    SELECT MIN(cnt) 
    FROM (SELECT COUNT(*) AS cnt FROM Employee GROUP BY Dept_id) AS t
);

-- Employees earning more than their Dept Average
SELECT Emp_name 
FROM Employee e 
WHERE Salary > (SELECT AVG(Salary) FROM Employee WHERE Dept_id = e.Dept_id);

-- Dept with the lowest Total Salary (Sum)
SELECT d.Dept_name 
FROM Employee e 
JOIN Departmentt d ON e.Dept_id = d.Dept_id 
GROUP BY d.Dept_name 
HAVING SUM(e.Salary) = (
     SELECT MIN(total_sal) 
     FROM (SELECT SUM(Salary) AS total_sal FROM Employee GROUP BY Dept_id) AS t
);

-- 7. Date Filters & Null Handling
-- Join by Year
SELECT Emp_name FROM Employee WHERE YEAR(Joining_date) = 2000;

-- Find Unassigned Departments
SELECT * FROM Departmentt d 
WHERE NOT EXISTS (SELECT 1 FROM Employee e WHERE e.Dept_id = d.Dept_id);

-- Full Outer Join Simulation (Left + Right Union)
SELECT d.Dept_name, e.Emp_name FROM Departmentt d LEFT JOIN Employee e ON d.Dept_id = e.Dept_id 
UNION 
SELECT d.Dept_name, e.Emp_name FROM Departmentt d RIGHT JOIN Employee e ON d.Dept_id = e.Dept_id;

-- Coalesce Null Dept IDs
SELECT Emp_name, COALESCE(Dept_id, 0) AS Dept_id FROM Employee;
