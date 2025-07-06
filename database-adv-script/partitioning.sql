-- Drop existing Booking table (if needed)
DROP TABLE IF EXISTS Booking;

-- Create partitioned Booking table by RANGE on start_date
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    user_id UUID,
    property_id UUID,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_booking_user FOREIGN KEY (user_id) REFERENCES User(user_id),
    CONSTRAINT fk_booking_property FOREIGN KEY (property_id) REFERENCES Property(property_id)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
