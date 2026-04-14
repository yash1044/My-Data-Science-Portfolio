# 🏢 JioCorp: HR & Departmental Budget Analytics (SQL)

## 📌 Project Overview
JioCorp HR Analytics is a structured SQL project focused on managing corporate human resources and departmental financial data. The project demonstrates the ability to build a relational database from scratch, manage employee-department mappings, and perform complex budget evaluations to support organizational decision-making.

## 🛠️ SQL Techniques Showcased
- **Relational Schema Building (DDL):** Designed and implemented `Employee` and `Department` tables with optimized data types and constraints.
- **Data Integrity (DML):** Managed corporate records through precise `INSERT`, `UPDATE`, and `ALTER` commands.
- **Advanced Joins:** Connected HR data with financial data to analyze employee distribution across different budget tiers.
- **Subqueries & Views:** - Used **Nested Subqueries** to identify departments with the lowest and highest budgets.
  - Created **SQL Views** for specific departments (Sales & Marketing) to simplify reporting.
- **Financial Logic:** Applied logic to calculate departmental budget hikes (e.g., 10% increase) and rank departments by expenditure.

## 📊 Key Business Questions Solved
- Identify employees working in high-budget departments (> 40M INR).
- Find the department with the second-highest budget using offset-based sorting.
- Calculate the new budget requirements for the company after a 10% increase.
- Track total employee headcount per department for resource allocation.

## 📂 Project Structure
- 📄 `JioCorp_HR_Department_Analytics.sql` : Full SQL script for database setup and analytical queries.
- 📝 `README.md` : Detailed project documentation.

## 🚀 How to Run
1. Create a database named `Jio` in your SQL environment.
2. Execute the provided `.sql` script to create tables and populate them with records.
3. Run the analytical queries to view HR and Budget insights.
