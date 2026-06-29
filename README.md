
# Carbon Footprint Tracker - Database Backend

A robust SQL-based database management system designed to track, log, and analyze user carbon emissions based on daily activities and logistics. This project serves as the core analytics backend for sustainability tracking applications.

## 🚀 Features
- **Relational Schema:** Optimized tables for tracking user activities and calculating corresponding emission factors.
- **Data Aggregation:** Advanced SQL queries to monitor real-time environmental footprints.
- **Scalable Architecture:** Designed to handle high-frequency time-series logging data.

## 📊 Database Queries & Analytics

### Total Emissions Calculation
To fetch the cumulative carbon footprint logged across the network, the system executes an inner join aggregation:

```sql
USE CarbonDB;

SELECT SUM(e.emission_value) AS total_emission
FROM USER_ACTIVITY ua
JOIN EMISSIONS e ON ua.record_id = e.record_id;
