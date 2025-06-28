# Database Schema (DDL)

This directory contains the SQL script to create the database schema for the Airbnb Database Project.

## Files
- `schema.sql`: SQL script to create all tables, define primary keys, foreign keys, constraints, and indexes.

## Overview
The schema includes the following tables:
- User
- Property
- Booking
- Payment
- Review
- Message

### Key Features:
- Proper use of UUIDs as primary keys.
- Foreign key constraints to ensure referential integrity.
- Enum types to control allowed values in specific columns.
- Indexes on important fields (e.g., email, booking_id) for performance optimization.

## Usage
Run the `schema.sql` file in your preferred SQL environment to create the database structure.

```sql
SOURCE schema.sql;