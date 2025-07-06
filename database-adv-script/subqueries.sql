-- Non-Correlated Subquery: Properties with Average Rating > 4.0
sql
Copy
Edit

SELECT p.*
FROM Property p
WHERE p.property_id IN (
    SELECT r.property_id
    FROM Review r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);
-- Correlated Subquery: Users with More Than 3 Bookings
SELECT u.*
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;