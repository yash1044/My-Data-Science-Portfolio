-- ==========================================================
-- Project: SQL Fundamentals & Data Retrieval
-- Description: Basic DDL (Create) and DQL (Select) operations
-- ==========================================================

-- 1. Database & Table Management
SHOW DATABASES;
USE ft;
SHOW TABLES;

-- 2. Creating Employee Table with Constraints
-- Note: Fixed spelling of "IF NOT EXISTS"
CREATE TABLE IF NOT EXISTS employee (
    emp_id INT(10) PRIMARY KEY, 
    names VARCHAR(50) NOT NULL, -- Increased length for safety
    mob_no BIGINT(10)           -- Used BIGINT for mobile numbers
);

-- 3. Data Insertion for Employee
INSERT INTO employee (emp_id, names, mob_no) VALUES 
(1001, 'abc', 123456789),
(1002, 'def', 123456789);

SELECT * FROM employee;

-- 4. Creating Professionals Table
CREATE TABLE IF NOT EXISTS Professionals (
    Professional_ID INT(3) PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50),
    Salary INT(10),
    Joining_Date DATETIME,
    Department VARCHAR(50)
);

-- 5. Bulk Insertion for Professionals
INSERT INTO Professionals (Professional_ID, First_Name, Last_Name, Salary, Joining_Date, Department) VALUES
(001, "Mayank", "Srivastava", 100000, "2021-02-20 09:00:00", "ENGINEER "),
(002, "Virat", "Agnihotri", 80000, "2021-06-11 09:00:00", "Architect"),
(003, "Shubham", "Srivastava", 300000, "2021-02-20 09:00:00", "ENGINEER"),
(004, "Sunil", "Khurana", 500000, "2021-02-20 09:00:00", "Architect"),
(005, "Mohammad", "Salman", 500000, "2021-06-11 09:00:00", "Architect"),
(006, "Prem", "Modi", 200000, "2021-06-11 09:00:00", "Sales"),
(007, "Harsh", "Shukla", 75000, "2021-01-20 09:00:00", "Sales"),
(008, "Pryag", "Agarwal", 9000, "2021-04-11 09:00:00", "Architect"),
(009, "Anil", "Rastogi", 120000, "2021-02-20 09:00:00", "Accounts"),
(010, "Amitabh", "Singh", 60000, "2021-06-11 09:00:00", "Finance"),
(011, " Jasbeer", "Kaur", 280000, "2021-02-20 09:00:00", "Accounts"),
(012, "Srijan", "Mahadev", 500000, "2021-02-20 09:00:00", "Sales"),
(013, "Mohammad", "Salman", 500000, "2021-06-11 09:00:00", "Finance"),
(014, "Shakti", "Khanna", 230000, "2021-06-11 09:00:00", "Engineer"),
(015, "Anand", "Kapoor", 45000, "2021-01-20 09:00:00", "Accounts"),
(016, "Shiwali", "Sethiya", 22000, "2021-04-11 09:00:00", "Architect"),
(017, "Virat", "Jadeja", 500000, "2021-06-11 09:00:00", "Finance"),
(018, "Maan", "Singh", 200000, "2021-06-11 09:00:00", "Engineer"),
(019, "Deepak", "Pandey", 78000, "2021-01-20 09:00:00", "Accounts"),
(020, "Rahul", "Sharma", 9000, "2021-04-11 09:00:00", "Architect");

-- 6. Data Retrieval & Transformations
SELECT * FROM Professionals;

-- Case transformation
SELECT UPPER(First_Name) AS Professional_Name FROM Professionals;

-- Unique Departments with Data Cleaning
SELECT DISTINCT TRIM(Department) AS Clean_Department FROM Professionals;

-- String Operations
SELECT LTRIM(First_Name) FROM Professionals;
SELECT CONCAT(First_Name, ' ', Last_Name) AS Full_Name FROM Professionals;
SELECT First_Name, LENGTH(First_Name) AS Name_Length FROM Professionals;

-- 7. Filtering (DQL)
SELECT * FROM Professionals WHERE Department = 'Sales';

-- Using TRIM to handle extra spaces in data
SELECT * FROM Professionals WHERE TRIM(Department) = 'Engineer';

SELECT * FROM Professionals WHERE Salary = 500000;
SELECT * FROM Professionals WHERE Professional_ID = 10;