-- Measure performance before creating indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'sample-user-id';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = 'sample-property-id';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';

-- Existing useful index
CREATE INDEX idx_user_email ON User (email);

-- New indexes for optimization
CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);
CREATE INDEX idx_booking_start_date ON Booking (start_date);
CREATE INDEX idx_property_host_id ON Property (host_id);

-- Measure performance after creating indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'sample-user-id';


EXPLAIN ANALYZE
SELECT * FROM Booking WHERE property_id = 'sample-property-id';

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';