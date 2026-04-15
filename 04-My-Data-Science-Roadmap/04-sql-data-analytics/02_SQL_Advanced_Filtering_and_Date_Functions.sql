-- ==========================================================
-- Project: SQL Advanced Filtering & Date Intelligence
-- Description: Logical operators, Range selection, and Date extractions.
-- ==========================================================

USE ft;

-- 1. Logical Operators & Filtering
-- Note: 'AND' on same column value will return empty; 'OR' is used for multiple categories.
SELECT * FROM professionals 
WHERE department = 'Sales' OR department = 'Architect';

-- Using NOT with TRIM to handle extra spaces
SELECT * FROM professionals 
WHERE NOT TRIM(department) = 'Engineer';

-- 2. Range & Set Filtering
-- Using BETWEEN for salary and IDs
SELECT * FROM professionals 
WHERE salary BETWEEN 100000 AND 400000;

SELECT * FROM professionals 
WHERE professional_id BETWEEN 5 AND 14;

-- Using IN for specific sets
SELECT * FROM professionals 
WHERE professional_id IN (1, 3, 5, 7, 9);

SELECT * FROM professionals 
WHERE LOWER(first_name) IN ('mayank', 'shubham', 'mohammad', 'harsh', 'anil');

-- 3. Date & Time Analytics
-- Extracting parts of the date with meaningful column names (Aliases)
SELECT 
    joining_date,
    YEAR(joining_date) AS join_year,
    MONTH(joining_date) AS join_month_num,
    MONTHNAME(joining_date) AS join_month_name,
    DAY(joining_date) AS join_day,
    DAYNAME(joining_date) AS join_day_name,
    WEEKOFYEAR(joining_date) AS join_week,
    TIME(joining_date) AS join_time
FROM professionals;

-- Filtering by specific timeframes
SELECT * FROM professionals 
WHERE joining_date BETWEEN '2021-02-20' AND '2021-04-12';

-- Getting professionals who joined in April
SELECT * FROM professionals 
WHERE MONTH(joining_date) = 4;