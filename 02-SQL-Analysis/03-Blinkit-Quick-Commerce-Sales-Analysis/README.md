# 🛒 Blinkit Quick-Commerce Sales Analytics (SQL)

## 📌 Project Overview
This project performs a comprehensive sales performance analysis for Blinkit (formerly Grofers), a leading quick-commerce platform. Using a dataset of 5,000+ records, I executed 50+ SQL queries to derive insights into product visibility, outlet types, and revenue patterns across different geographical tiers.

## 🛠️ SQL Techniques Showcased
- **Data Definition & Cleaning:** Schema creation, table renaming, and structure optimization.
- **Advanced Aggregations:** Calculated crucial business metrics using `SUM()`, `AVG()`, `COUNT()`, `MAX()`, and `MIN()`.
- **Complex Filtering:** Used `WHERE` and `LIKE` clauses to segment data based on item types (e.g., 'Dairy', 'Soft Drinks') and fat content.
- **Grouped Analysis:** Extensively used `GROUP BY` and `ORDER BY` to compare sales across different Outlet Sizes, Location Types (Tier 1, 2, 3), and Establishment Years.
- **Statistical Insights:** Analyzed Item Visibility trends and weight distributions to identify operational bottlenecks.

## 📊 Key Business Questions Solved
- Which product categories generate the highest revenue in Tier 1 cities?
- What is the impact of Item Fat Content on total outlet sales?
- Identify the most efficient Outlet Types based on average sales per item.
- Track the growth of stores established since 1985 through 2009.

## 📂 Project Structure
- 📄 `Blinkit_Grocery_Sales_Analytics.sql` : Script containing 50+ analytical queries.
- 📊 `Blinkit_store.csv` : Raw grocery sales data used for the analysis.
- 📝 `README.md` : Detailed project documentation.

## 🚀 How to Run
1. Run the script in any MySQL environment.
2. The script handles database creation (`Blinkit`) and table optimization automatically.
3. Review the outputs to understand the quick-commerce market dynamics.
