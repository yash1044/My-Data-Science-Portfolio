-- ==========================================================
-- Project: SQL Advanced Queries, Subqueries & Joins
-- Description: Subqueries, Pagination (Limit/Offset), and Multi-table Joins.
-- ==========================================================

USE ft;

-- 1. Advanced Aggregation with HAVING
-- Finding high-budget departments
SELECT TRIM(department) AS dept, SUM(salary) AS total_salary 
FROM professionals
GROUP BY dept
HAVING total_salary >= 1000000;

-- 2. Subqueries (Nested Queries)
-- Find employees with the maximum salary
SELECT * FROM professionals
WHERE salary = (SELECT MAX(salary) FROM professionals);

-- Find the 2nd Highest Salary using a Subquery
SELECT * FROM professionals
WHERE salary = (SELECT MAX(salary) FROM professionals 
                WHERE salary < (SELECT MAX(salary) FROM professionals));

-- 3. Pagination & Ranking (LIMIT and OFFSET)
-- Get Top 5 highest paid professionals
SELECT DISTINCT(salary) FROM professionals 
ORDER BY salary DESC LIMIT 5;

-- Get exactly the 2nd highest salary
SELECT DISTINCT(salary) FROM professionals 
ORDER BY salary DESC LIMIT 1, 1;

-- 4. Multi-Table Relational Structure (Joins Preparation)
-- Creating relational tables: Customers, Products, and Orders
CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(20),
    address TEXT
);

CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price DECIMAL(10,2),
    description TEXT
);

CREATE TABLE IF NOT EXISTS orders (
    id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- 5. Data Retrieval with JOINS (The Final Boss)
-- Joining Customers and Orders to see who bought what
SELECT c.name, o.id AS order_id, o.order_date
FROM customers c
JOIN orders o ON c.id = o.customer_id;