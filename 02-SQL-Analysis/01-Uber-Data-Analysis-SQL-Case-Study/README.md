# 🚗 Uber Data Analysis Case Study (50 SQL Queries)

## 📌 Project Overview
This project is a deep-dive data analysis case study on Uber's operational data using **MySQL**. It covers 50 real-world business questions, categorized into Basic, Intermediate, and Advanced levels, to extract meaningful insights about drivers, passengers, and ride patterns.

## 🛠️ Tools Used
- **Database:** MySQL
- **Analysis:** SQL (Joins, Subqueries, CTEs, Aggregations, Window Functions)

## 📊 Key Insights Explored
- **Driver Performance:** Top earners and high-rated drivers.
- **Ride Patterns:** Popular pickup/dropoff locations and average ride durations.
- **Revenue Analysis:** Fare amounts, payment method trends, and earnings.
- **Operational Efficiency:** Analysis of ride cancellations, ratings, and driver-passenger matching.

## 📂 Project Structure
- 📄 `Uber_Data_Analysis_Case_Study_50_Queries.sql` : Contains all 50 SQL queries with detailed comments.
- 📝 `README.md` : Project documentation.

> **Note:** The raw dataset is not included in this repository for data privacy reasons. The queries are designed to work on a standard Uber operational database schema (Drivers, Passengers, and Rides tables).

## 🚀 How to Use
1. Use your MySQL environment (like MySQL Workbench).
2. Create the necessary table structures (Drivers, Passengers, Rides).
3. Execute the `Uber_Data_Analysis_Case_Study_50_Queries.sql` script to analyze the data.

## 🗂️ Database Schema & Dataset Details
The analysis is performed on three relational tables. Below is the structure of the dataset used in this case study:


### 1. **Passengers Table**

- `passenger_id`: Unique ID for each passenger.
- `passenger_name`: Name of the passenger.
- `rating`: Average rating given to the passenger.
-`signup_date`: The date when the passenger registered on the Uber platform.
-`total_rides:` Total number of trips taken by the passenger.
-`total_spent`: Total cumulative amount spent by the passenger.



### 2. **Drivers Table**

- `driver_id`: Unique ID for each driver.
- `driver_name`: Name of the driver.
- `rating`: Average rating given to the driver.
- `earnings`: Total earnings of the driver.
- `join_date`: Date when the driver joined Uber.



### 3. **Rides Table**

- `ride_id`: Unique ID for each ride.
- `passenger_id`: Foreign key linking to Passengers.
- `driver_id`: Foreign key linking to Drivers.
- `ride_timestamp`: Date and time of the ride.
- `pickup_location`: Starting point of the journey.
- `dropoff_location`: Destination point.
- `fare_amount`: Total fare charged for the ride.
- `ride_duration`: Duration of the ride in minutes.
- `ride_distance`: Distance covered during the ride (in km/miles).
- `payment_method`: Method used (Cash, Credit Card, etc.).



> **Note:** The analysis uses `Passengers.csv`, `Drivers.csv`, and `Rides.csv` as the data source. While the raw files are not uploaded for privacy, the SQL script includes the complete logic to handle this schema.

