# Partition Performance Report
## Overview
The Booking table was partitioned by range on the start_date column using MySQL’s RANGE partitioning method.

## Performance Testing
We tested queries that fetch bookings within specific date ranges.

## Observations
Significant improvement in query execution time for fetching bookings within date ranges.

The database engine was able to prune partitions and scan only the relevant subset of data instead of the entire table.

Queries filtering on the start_date column became much more efficient, especially as the dataset size grew.

## Conclusion
Partitioning the Booking table based on start_date greatly enhances performance for date-based queries and is recommended for large datasets.

