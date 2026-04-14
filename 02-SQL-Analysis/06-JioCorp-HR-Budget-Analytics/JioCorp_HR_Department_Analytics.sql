/*
PROJECT NAME: JioCorp Employee & Department Analytics
OBJECTIVE: To manage corporate human resources data and analyze departmental budgets using relational database techniques.
TECHNIQUES USED: DDL/DML, Joins, Nested Subqueries, Views creation, and Data Constraints.
*/

create database Jio

use jio

create table Employee (
Emp_ID int(10),
First_Name varchar(10),
Last_Name varchar(10),
Dept_code int (3));

select * from employee;

insert into Employee (Emp_ID, First_Name, Last_Name, Dept_Code)
values
(248132604,"Shivam", "Deo",76),
(815242165,"Parijat", "Shankar",43),
(416122768,"rahul", "Srivastava", 66),
(960828909,"Kumar","Swamy",47),
(440361783,"Shankh","Khurana",23),
(851591490,"Swapnil", "Mehta", 43),
(668957687,"Arvind", "Chattejee",23),
(585068105,"Jalpesh", "Modi",33),
(379882096,"Kavita", "Yadav", 23),
(718929853,"Syed", "Zaheer", 66),
(873840890,"Sanjay", "Shukla",76),
(941877566,"Ragini", "Malhotra",33),
(998809976,"Javed","Khan", 23),
(669391133, "Vikram","Singh",43),
(861199021,"Ajay","Kumar",23),
(980140890,"Pankaj","Verma",43),
(750603819,"Roshan","Singh",47),
(558885983,"Sunaina","Yadav",76),
(392214056,"Bhavna","Sharma",66),
(164880802,"Pooja","Kumari",47);

create table Department(
Dept_Code int (10),
Dept_Name varchar(25),
Dept_Budget int (12));

insert into Department (Dept_Code,Dept_Name,Dept_Budget)
values
(23,"Sales and Marketing",50000000),
(66,"Information Technology",100000000),
(43,"Customer Service",30000000),
(33, "Human Resources",20000000),
(76, "Finance and Accounting",40000000),
(47,"Operations",60000000);

select * from Department;


-- 1 What are the unique Last_Names from the Employee Table?

select distinct(Last_Name) from employee;

-- 2 What is the total number of employees in the company?

select count(*) from employee;

-- 3 What is the total budget for the company?

select sum(dept_budget) from Department;

-- 4 What is the department code and budget for the "Operations" department?

select dept_code,dept_budget from department
where dept_name = "Operations";

-- 5 What is the total budget for the "Information Technology" and "Finance and Accounting" departments?

select sum(dept_budget) from department
where dept_name in ("Information Technology","Finance and Accounting");

-- 6 Who are the employees working in the "Sales and Marketing" department?

select e.First_name from employee e join Department d on e.dept_code = d.dept_code
where dept_name = "Sales and Marketing";

-- 7 What is the name of the employee with Emp_ID 718929853?

select first_name from employee
where Emp_ID = 718929853;

-- 8 What is the budget for the "Customer Service" department?

select dept_budget from department
where dept_name = "Customer Service";

-- 9 What is the total budget for all departments except "Operations"?

select sum(dept_budget) from department
where dept_name != "Operations";

-- 10 What is the Emp_ID, First_Name and department_code of the employee with the last name "Shukla"?

select Emp_ID, First_Name,dept_code from employee
where last_name = "Shukla";

-- 11 What is the average budget for the departments with Dept_Code 23 and 43?

select avg(dept_budget) from department
where dept_code in (23,43);

-- 12 How many employees are there whose first name starts with the letter "S"?

select count(first_name) from employee 
where first_name like "s%";

-- 13 List the name of Employees whose First_name starts with "S".

select first_name from employee 
where first_name like "s%";

-- 14 List the name of Employees whose First_name starts with "S" and ends with "A".

select first_name from employee 
where first_name like "s%a";

-- 15 Fetch Top 3 records of all the Departments in descending order based on the budget of the department.

select * from department
order by dept_budget desc limit 3;

-- 16 Fetch data of all employees from the employee table whose dept_code is an odd number

select * from employee
where dept_code %2 != 0;

-- other way
SELECT *
FROM Employee
WHERE MOD(Dept_Code,2) = 1;

-- 17 Create a clone of the table employee with a name Clone_table and having two columns, 
--    one with full name and the other with the department code with an alias D_Code

create table Clone_table as
select first_name,dept_code as D_Code from employee;

select * from Clone_table;

alter table Clone_table
modify first_name varchar(20);

update Clone_table as ct join employee as e
on ct.D_code = e.dept_code
set ct.first_name = concat(e.first_name," ",e.last_name);

select * from Clone_table;

-- 18 Delete employee details of "Ajay Kumar" from Clone_Table

delete from Clone_table
where full_name = "Ajay Kumar";

-- 19 The name of the employee "rahul Srivasatava" has a lower case 'r', make changes 
--    in the clone table so that the full_name is written as "Rahul Srivastava" 

update Clone_table
set full_name = "Rahul Srivastava" 
where full_name = "Rahul Srivastava";

-- 20 Convert Full_name from clone table into uppercase.

select upper(full_name) from Clone_table;

-- 21 Fetch second to fifth record from the department table based on the Highest Budget.
 
select * from department
order by dept_budget desc limit 1,4;

select * from department
order by dept_budget desc 
limit 4 offset 1;

-- 22 The employee with the name "Jalpesh Modi" has decided to move into another department, 
--    delete the D_code value corresponding to "Jalpesh_Modi" from the clone_table

select * from clone_table;

delete from Clone_table
where full_name = "Jalpesh Modi";

update clone_table
set D_Code = null 
where first_name = "Jalpesh Modi";

-- 23 Change the name of the column D_Code to Department_code in clone table.

alter table Clone_table
rename column D_Code to Department_code;

-- 24 Since no mathematical operation will be performed on emp_id in employee table, 
--    convert its data type from int to varchar

alter table employee
modify Enp_ID varchar(20);

ALTER TABLE Employee
MODIFY Emp_ID VARCHAR(20);

-- 25 The Company has decided to increase the budget of all the department by 10% , 
--    make changes accordingly to fetch old and new budget

select dept_name,dept_budget old_bufget,dept_budget*1.1 new_budget from Department

-- 26 What is the name of the department with the lowest budget?

select dept_name,dept_budget from department
where dept_budget = (select min(dept_budget) from department);

SELECT Dept_Name
FROM Department
ORDER BY Dept_Budget ASC
LIMIT 1;

-- 27 Who are the employees working in the departments with budgets greater than 40,000,000?

select e.first_name from employee e join department d on e.dept_Code = d.dept_code
where d.dept_budget > 40000000;

-- 28 What is the name of the department with the second highest budget?

select dept_name,dept_budget from department
order by dept_budget desc limit 1,1;

-- 29 How many employees are there in each department?

select dept_name,count(e.first_name) from employee e join department d on d.dept_code = e.dept_code
group by dept_name;

-- 30 Create a view of Employees working in Sales and Marketing department only.

create view Sales_Marketing as 
select Emp_ID,first_name,last_name,dept_code from Employee
where dept_code in (select dept_code from department where dept_name = "Sales and Marketing");

select * from Sales_Marketing;


select * from employee;
select * from Department;

drop table Clone_table;

drop table department_code;



