-- ============================================
-- TCL (Transaction Control Language) Example
-- ============================================

-- Create Database
CREATE DATABASE tcl;
USE tcl;

-- Create Table
CREATE TABLE order_details (
    order_id INT,
    product_name VARCHAR(50),
    order_no INT,
    order_date DATE
);

-- Insert Initial Records
INSERT INTO order_details VALUES (1,'Laptop',234,'2000-03-02');
INSERT INTO order_details VALUES (2,'Desktop',456,'2001-02-02');
INSERT INTO order_details VALUES (3,'Keyboard',457,'2000-03-02');
INSERT INTO order_details VALUES (4,'Mouse',500,'2001-03-02');
INSERT INTO order_details VALUES (5,'Antivirus',501,'2002-03-02');

-- ============================================
-- TRANSACTION 1 (ROLLBACK Example)
-- ============================================

START TRANSACTION;

INSERT INTO order_details VALUES (6,'Printer',600,'2003-06-02');
INSERT INTO order_details VALUES (7,'Scanner',601,'2003-06-02');

-- Rollback inserted rows
ROLLBACK;

-- ============================================
-- TRANSACTION 2 (COMMIT Example)
-- ============================================

START TRANSACTION;

DELETE FROM order_details WHERE order_id = 4;
DELETE FROM order_details WHERE order_id = 5;

COMMIT;

-- ============================================
-- SAVEPOINT Example
-- ============================================

SET autocommit = 0;

START TRANSACTION;

SAVEPOINT svp_update;

UPDATE order_details 
SET product_name ='Gaming Keyboard' 
WHERE order_no = 457;

INSERT INTO order_details VALUES (8,'Speaker',700,'2004-01-01');
INSERT INTO order_details VALUES (9,'Webcam',701,'2004-02-01');

SAVEPOINT svp_delete;

DELETE FROM order_details 
WHERE product_name = 'Desktop';

-- Rollback only delete
ROLLBACK TO svp_delete;

-- Rollback update + inserts
ROLLBACK TO svp_update;

COMMIT;

SET autocommit = 1;

-- ============================================
-- DCL (User & Privileges)
-- ============================================

CREATE USER 'user'@'localhost' IDENTIFIED BY 'password123';

GRANT ALL PRIVILEGES 
ON tcl.order_details 
TO 'user'@'localhost';

REVOKE DELETE 
ON tcl.order_details 
FROM 'user'@'localhost';

-- Check privileges
SHOW GRANTS FOR 'user'@'localhost';
