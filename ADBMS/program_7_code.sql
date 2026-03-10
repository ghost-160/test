/* =========================
   DATABASE CREATION
========================= */

CREATE DATABASE IF NOT EXISTS pro;
USE pro;


/* =========================
   EMPLOYEE TABLE
========================= */

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee VALUES
(1,'Arun',25000),
(2,'Rahul',32000),
(3,'Meena',28000),
(4,'Anu',40000);


/* =========================
   STORED PROCEDURE
   INCREASE SALARY
========================= */

DELIMITER $$

CREATE PROCEDURE increase_salary()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE e_id INT;
    DECLARE sal INT;

    DECLARE emp_cursor CURSOR FOR
    SELECT emp_id, salary FROM employee;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN emp_cursor;

    read_loop: LOOP
        FETCH emp_cursor INTO e_id, sal;

        IF done THEN
            LEAVE read_loop;
        END IF;

        IF sal < 30000 THEN
            UPDATE employee
            SET salary = salary * 1.10
            WHERE emp_id = e_id;
        END IF;

    END LOOP;

    CLOSE emp_cursor;

END $$

DELIMITER ;

CALL increase_salary();


/* =========================
   ELECTRICITY TABLE
========================= */

CREATE TABLE electricity(
    cust_id INT,
    name VARCHAR(50),
    unit INT,
    bill_amount INT
);

INSERT INTO electricity VALUES
(1,'Ajay',120,NULL),
(2,'Meera',250,NULL),
(3,'Ravi',80,NULL);


/* =========================
   ELECTRICITY BILL PROCEDURE
========================= */

DELIMITER $$

CREATE PROCEDURE calculate_bill()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE cid INT;
    DECLARE u INT;
    DECLARE amount INT;

    DECLARE cur CURSOR FOR
    SELECT cust_id, unit FROM electricity;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO cid, u;

        IF done THEN
            LEAVE read_loop;
        END IF;

        IF u <= 100 THEN
            SET amount = u * 3;
        ELSEIF u <= 200 THEN
            SET amount = u * 5;
        ELSE
            SET amount = u * 7;
        END IF;

        UPDATE electricity
        SET bill_amount = amount
        WHERE cust_id = cid;

    END LOOP;

    CLOSE cur;

END $$

DELIMITER ;

CALL calculate_bill();


/* =========================
   EMPLOYEE HISTORY TABLE
========================= */

CREATE TABLE emp_history (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    date_of_deletion DATE
);


/* =========================
   DELETE TRIGGER
========================= */

DELIMITER $$

CREATE TRIGGER emp_delete_trigger
AFTER DELETE ON employee
FOR EACH ROW
BEGIN
    INSERT INTO emp_history
    VALUES (OLD.emp_id, OLD.name, OLD.salary, CURDATE());
END $$

DELIMITER ;

DELETE FROM employee WHERE emp_id = 1;


/* =========================
   EMP DETAILS TABLE
========================= */

CREATE TABLE emp_details(
    id INT,
    name VARCHAR(50),
    job_id VARCHAR(20)
);


/* =========================
   BEFORE INSERT TRIGGER
========================= */

DELIMITER $$

CREATE TRIGGER before_insert_emp
BEFORE INSERT ON emp_details
FOR EACH ROW
BEGIN
    SET NEW.name = TRIM(NEW.name);
    SET NEW.job_id = UPPER(NEW.job_id);
END $$

DELIMITER ;

INSERT INTO emp_details VALUES(1,'arun','developer');


/* =========================
   STUDENT TABLE
========================= */

CREATE TABLE student(
    id INT,
    name VARCHAR(50),
    sub1 INT,
    sub2 INT,
    sub3 INT,
    total INT,
    percentabe FLOAT,
    grade CHAR(2)
);

INSERT INTO student VALUES
(1,'Rahul',70,80,90,NULL,NULL,NULL);


/* =========================
   STUDENT MARKS TRIGGER
========================= */

DELIMITER $$

CREATE TRIGGER marks_update
BEFORE UPDATE ON student
FOR EACH ROW
BEGIN
    DECLARE tot INT;
    DECLARE per FLOAT;

    SET tot = NEW.sub1 + NEW.sub2 + NEW.sub3;
    SET per = tot / 3;

    SET NEW.total = tot;
    SET NEW.percentabe = per;

    SET NEW.grade =
    CASE
        WHEN per >= 90 THEN 'A'
        WHEN per >= 75 THEN 'B'
        WHEN per >= 60 THEN 'C'
        ELSE 'D'
    END;

END $$

DELIMITER ;

UPDATE student SET sub1 = 95 WHERE id = 1;


/* =========================
   DISPLAY RESULTS
========================= */

SELECT * FROM employee;
SELECT * FROM emp_history;
SELECT * FROM emp_details;
SELECT * FROM electricity;
SELECT * FROM student;
