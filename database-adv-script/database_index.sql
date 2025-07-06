-- Existing useful index
CREATE INDEX idx_user_email ON User (email);

-- New indexes for optimization
CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);
CREATE INDEX idx_booking_start_date ON Booking (start_date);
CREATE INDEX idx_property_host_id ON Property (host_id);
