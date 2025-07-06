-- Initial complex query to retrieve all bookings with user, property, and payment details
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.first_name,
    User.last_name,
    User.email,
    Property.name AS property_name,
    Property.location,
    Property.price_per_night,
    Payment.amount AS payment_amount,
    Payment.payment_method
FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;

-- Analyze the initial query’s performance
EXPLAIN ANALYZE
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.first_name,
    User.last_name,
    User.email,
    Property.name AS property_name,
    Property.location,
    Property.price_per_night,
    Payment.amount AS payment_amount,
    Payment.payment_method
FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;


-- Optimized query with multiple conditions using AND
EXPLAIN ANALYZE
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.first_name,
    User.last_name,
    User.email,
    Property.name AS property_name,
    Property.location,
    Property.price_per_night,
    Payment.amount AS payment_amount,
    Payment.payment_method
FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id
WHERE Booking.status = 'confirmed'
  AND Booking.start_date >= '2025-01-01';
