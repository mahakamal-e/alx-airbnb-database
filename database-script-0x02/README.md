# Seed Sample Data

This directory contains the SQL script to populate the Airbnb database with sample data.

## Files

- `seed.sql`: SQL INSERT statements to add realistic data to the User, Property, Booking, Payment, Review, and Message tables.

## Sample Data Includes:

- 3 Users (guest, host, admin)
- 2 Properties
- 1 Booking
- 1 Payment
- 1 Review
- 1 Message

## Usage

To populate your database, run the following command in your SQL environment:

```sql
SOURCE seed.sql;