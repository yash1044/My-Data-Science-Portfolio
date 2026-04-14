# 🛒 CromaStore: Retail Inventory Analytics (SQL)

## 📌 Project Overview
CromaStore Inventory Analytics is a comprehensive SQL project designed to manage and analyze product inventory and manufacturer relationships for an electronics retail store. The project covers everything from schema design to advanced data manipulation and business reporting.

## 🛠️ SQL Techniques Used
- **Schema Design (DDL):** Created structured tables for `Manufacturers` and `Product_Inventory` with primary and foreign key constraints.
- **Data Manipulation (DML):** Performed bulk inserts, updates (price adjustments), and record management.
- **Advanced Querying:** - **Joins:** Linked products with their respective manufacturers to generate detailed reports.
  - **Subqueries:** Used nested queries to identify specific products, such as those with maximum prices per manufacturer.
  - **Aggregate Functions:** Calculated average prices and total inventory counts.
- **Business Logic:** Applied conditional logic (CASE statements/WHERE) for discount applications and inventory filtering.

## 📊 Key Business Insights Solved
- List the average price of products for each manufacturer.
- Identify products with a price greater than 5000 INR.
- Apply a 10% holiday discount to all premium products.
- Track manufacturer-wise product diversity.

## 📂 Project Structure
- 📄 `CromaStore_Inventory_Analytics.sql` : Full SQL script containing database setup and all analysis queries.
- 📝 `README.md` : Project documentation and technical summary.

## 🚀 How to Run
1. Copy the script from `CromaStore_Inventory_Analytics.sql`.
2. Execute the script in any SQL environment (MySQL, PostgreSQL, etc.).
3. Explore the result sets for various business queries.
