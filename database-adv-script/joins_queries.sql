-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    Booking.booking_id AS booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    User.user_id AS user_id,
    CONCAT(User.first_name, ' ', User.last_name) AS user_name,
    User.email
FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    Property.property_id AS property_id,
    Property.name AS property_name,
    Review.review_id AS review_id,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id;
-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or the booking is not linked to a user
-- Get all users and their bookings (even if no booking)
SELECT 
    User.user_id AS user_id,
    CONCAT(User.first_name, ' ', User.last_name) AS user_name,
    User.email,
    Booking.booking_id AS booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date
FROM User
LEFT JOIN Booking ON Booking.user_id = User.user_id

UNION

-- Get all bookings without users (if any)
SELECT 
    User.user_id AS user_id,
    CONCAT(User.first_name, ' ', User.last_name) AS user_name,
    User.email,
    Booking.booking_id AS booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date
FROM Booking
LEFT JOIN User ON Booking.user_id = User.user_id

ORDER BY user_id, booking_id;