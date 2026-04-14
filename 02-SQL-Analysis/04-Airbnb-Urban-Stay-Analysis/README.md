# 🏠 Airbnb Urban Stay & Pricing Analytics (SQL)

## 📌 Project Overview
This project involves a deep-dive analysis of Airbnb stay patterns and pricing dynamics. By connecting two primary datasets—**Listings** (host and location info) and **Booking Details** (price and reviews)—I executed 50+ SQL queries to understand market trends, host performance, and neighborhood popularity.

## 🛠️ SQL Techniques Showcased
- **Relational Data Modeling:** Managed and linked multiple tables using `listing_id`.
- **Advanced Joins:** Utilized `INNER JOIN` and `LEFT JOIN` to combine host information with transaction data.
- **Complex Subqueries:** Implemented nested queries to identify outliers, such as the highest and lowest pricing hosts.
- **Analytical Aggregations:** Used `SUM()`, `AVG()`, and `COUNT()` to calculate total reviews and average stay costs by neighborhood.
- **Sorting & Filtering:** Leveraged `ORDER BY`, `LIMIT`, and `DISTINCT` for top-performer reporting.

## 📊 Key Business Insights Solved
- Which neighborhood groups generate the highest total number of reviews?
- Identify the most expensive and most affordable hosts using subqueries and joins.
- Analyze the correlation between neighborhood location and average pricing.
- Extract host details for specific price thresholds (e.g., stays under 100 USD).

## 📂 Project Structure
- 📄 `Airbnb_Urban_Stay_Analytics.sql` : Script containing all 50 queries including table setup and analysis.
- 📊 `Listings.csv` & `Booking_details.csv` : Raw data files used for analysis.
- 📝 `README.md` : Detailed project documentation.

## 🚀 How to Run
1. Create a database named `airbnb` in your SQL environment.
2. Run the `Airbnb_Urban_Stay_Analytics.sql` script.
3. The script will automatically handle table renaming and data preparation.
