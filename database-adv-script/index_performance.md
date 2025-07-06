# Index Performance Report

## Overview
We created indexes on high-usage columns in the User, Booking, and Property tables to improve query performance.

## Indexes Created
- User: email, user_id
- Booking: user_id, property_id, start_date
- Property: property_id, host_id

## Performance Measurement

### Query 1: Find bookings by user_id
```sql
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'sample-user-id';