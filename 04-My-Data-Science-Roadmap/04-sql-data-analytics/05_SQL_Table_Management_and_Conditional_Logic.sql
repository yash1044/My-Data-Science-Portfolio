-- ==========================================================
-- Project: SQL Table Management & Conditional Logic
-- Author: Yash Shah
-- Description: Multi-table Joins, Altering Structures, and IF-ELSE Logic.
-- ==========================================================

USE ft;

-- 1. Complex Multi-Table Joins
-- Linking Customers, Orders, and Products in one single view
SELECT 
    c.name AS customer_name, 
    p.name AS product_name 
FROM orders o
JOIN customers c ON c.id = o.customer_id
JOIN products p ON p.id = o.product_id;

-- 2. Table Maintenance (ALTER Operations)
-- Creating a backup and modifying structure
CREATE TABLE IF NOT EXISTS copyprol AS SELECT * FROM professionals;

-- Renaming columns and changing data types
ALTER TABLE copyprol RENAME COLUMN professional_id TO id;
ALTER TABLE copyprol MODIFY COLUMN id VARCHAR(20);

-- Adding and dropping columns
ALTER TABLE copyprol ADD COLUMN status_tag VARCHAR(10);
ALTER TABLE copyprol DROP COLUMN status_tag;

-- 3. Data Updates (DML)
UPDATE copyprol SET salary = 30000 WHERE id = '20';
UPDATE copyprol SET salary = 25000 WHERE first_name = 'Rahul';

-- 4. Conditional Logic (The IF Function)
-- Categorizing professionals based on their salary
SELECT *, 
    IF(salary >= 100000, 'Class A', 'Class B') AS professional_class 
FROM professionals;