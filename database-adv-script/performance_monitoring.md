# Performance Monitoring Report
## Overview
We continuously monitored and analyzed the performance of frequently used queries in the alx-airbnb-database project using EXPLAIN ANALYZE.

##Queries Monitored
Query 1: Fetch bookings by user ID
```sql
Copy
Edit
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'sample-user-id';
Query 2: Fetch bookings by property ID
sql
Copy
Edit
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = 'sample-property-id';
Query 3: Fetch bookings within a date range

sql
Copy
Edit
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
Bottlenecks Identified
Full table scans were occurring on large datasets.

Queries filtering by user_id, property_id, and start_date had high execution time before optimization.
```
## Improvements Implemented
Created indexes on frequently used columns:

Booking.user_id

Booking.property_id

Booking.start_date

Property.host_id

Partitioned the Booking table by start_date to improve date-based query performance.

## Results
Query execution time reduced significantly after creating the indexes and applying partitioning.

The database engine was able to use indexes effectively and skip unnecessary data scans.

Partitioning allowed faster access to the relevant data ranges, especially for date-based queries.

## Conclusion
Monitoring query performance regularly using EXPLAIN ANALYZE is essential for detecting bottlenecks.
Indexing and partitioning are powerful tools that significantly enhance database efficiency and reduce execution time for large datasets.