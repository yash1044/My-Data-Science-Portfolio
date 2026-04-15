-- ==========================================================
-- Project: SQL Aggregations, RegEx and Data Manipulation
-- Description: Grouping data, Pattern matching with RegEx, and CRUD operations.
-- ==========================================================

USE ft;

-- 1. Data Cleaning & Table Management (DML/DDL)
-- Note: Fixed syntax for multiple inserts
INSERT INTO students (id, names, city) VALUES
(1, 'yash', 'new vadaj'),
(2, 'priyanka', 'new vadaj'),
(3, 'pipu', 'old vadaj'),
(4, 'nishit', 'hansol');

-- Deleting and Updating records
DELETE FROM students WHERE id = 4;
UPDATE students SET names = 'priyanka' WHERE id = 2;

-- Creating a backup table
CREATE TABLE IF NOT EXISTS copypro AS SELECT * FROM professionals;

-- 2. Advanced Pattern Matching (Like & RegEx)
-- Using LIKE for simple patterns
SELECT * FROM professionals WHERE first_name LIKE 'a%'; -- Starts with 'a'
SELECT * FROM professionals WHERE salary LIKE '5%';    -- Salary starts with 5

-- Using REGEXP for complex patterns
SELECT * FROM professionals WHERE first_name REGEXP '^a';   -- Starts with 'a'
SELECT * FROM professionals WHERE first_name REGEXP 'm$';   -- Ends with 'm'
SELECT * FROM professionals WHERE first_name REGEXP 'ab|am|ss'; -- Contains ab, am, or ss

-- 3. Data Aggregation (The Heart of Analysis)
-- Grouping by Department to find insights
SELECT 
    TRIM(department) AS dept, 
    COUNT(first_name) AS employee_count,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    SUM(salary) AS total_budget,
    ROUND(AVG(salary), 2) AS avg_salary
FROM professionals
GROUP BY dept
HAVING avg_salary > 50000 -- Only showing departments with good average pay
ORDER BY avg_salary DESC;