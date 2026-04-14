# 🎵 MelodyMetrics: Spotify Music Streaming Analysis (SQL)

## 📌 Project Overview
MelodyMetrics is a deep-dive SQL analysis project that explores music streaming data. By designing and managing a normalized relational database containing Users, Playlists, and Tracks, the project derives insights into user behavior, playlist trends, and track duration patterns.

## 🛠️ SQL Techniques Showcased
- **Relational Schema Design (DDL):** Created 4 interconnected tables (`Users`, `Playlists`, `Tracks`, `PlaylistTracks`) with Primary and Foreign key constraints to ensure data integrity.
- **Complex Multi-table Joins:** Executed 3-way and 4-way joins to link user profiles with their specific playlist compositions and track details.
- **Correlated Subqueries:** Implemented advanced subqueries to identify tracks that have a duration longer than the average duration within their respective albums.
- **Advanced Sorting & Ranking:** Performed multi-level sorting (e.g., by track count descending and username ascending) to rank playlist creators.
- **Aggregations:** Leveraged `COUNT()` and `AVG()` functions to analyze the density of tracks per playlist and average listening times.

## 📊 Key Business Questions Solved
- Identify users who have created the most popular playlists based on track count.
- Find the longest duration track within each specific playlist along with its position.
- Compare individual track durations against the average duration of the album they belong to.
- List all playlists created by a specific user along with their creation dates.

## 📂 Project Structure
- 📄 `Spotify_Streaming_Data_Analytics.sql` : Complete SQL script featuring schema creation, data insertion, and all 10 analytical queries.
- 📝 `README.md` : Detailed project documentation.

## 🚀 How to Run
1. Create a database named `Spotify` in your SQL environment.
2. Execute the `Spotify_Streaming_Data_Analytics.sql` script.
3. The script will set up the normalized schema and run the analytical queries to show the results.
