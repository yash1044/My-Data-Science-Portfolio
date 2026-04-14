# ⚽ SkySports: FIFA World Cup Post-Match Analytics (SQL)

## 📌 Project Overview
SkySports World Cup Analytics is a data-driven project focused on evaluating team performance, player efficiency, and disciplinary records from the FIFA World Cup 2022. By integrating overall tournament statistics with group-stage performance data, this project provides a holistic view of the tournament's dynamics using SQL.

## 🛠️ SQL Techniques Showcased
- **Relational Data Integration:** Performed complex **Inner Joins** to merge `overall_wc_stats` with `group_stage_team_stats`.
- **Performance Metrics:** Used `AVG()` and `SUM()` to calculate average pass percentages, total goals, and possession stats across different groups.
- **Disciplinary Analysis:** Analyzed red/yellow card distributions and fouls to assess team discipline.
- **Advanced Grouping:** Executed `GROUP BY` and `ORDER BY` on joined tables to rank groups based on players used and offside counts.
- **Conditional Querying:** Filtered data using specific ranks and group IDs to extract precise performance markers.

## 📊 Key Business Questions Solved
- Which team held the #1 rank in specific group stages?
- What is the average passing accuracy (`passes_pct`) for each tournament group?
- Which group utilized the highest number of players across all matches?
- Ranking groups based on total goals scored and defensive fouls committed.

## 📂 Project Structure
- 📄 `SkySports_WorldCup_Analytics.sql` : Comprehensive script with 50+ analytical queries.
- 📊 `overall_wc_stats.csv` & `group_stage_team_stats.csv` : Dataset files.
- 📝 `README.md` : Project documentation.

## 🚀 How to Run
1. Create a database named `Sky_Sports` in your MySQL environment.
2. Run the provided `.sql` script to set up tables and execute the analysis.
3. Explore the results to see team performance trends from the 2022 World Cup.
