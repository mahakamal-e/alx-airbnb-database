# Entity-Relationship Diagram (ERD) - Airbnb Database

This document describes the entities, attributes, and relationships for the Airbnb database project.

---

## 📌 Entities and Attributes

### 1. User
- `user_id` (Primary Key)
- `first_name`
- `last_name`
- `email` (Unique)
- `password_hash`
- `phone_number`
- `role` (guest, host, admin)
- `created_at`

---

### 2. Property
- `property_id` (Primary Key)
- `host_id` (Foreign Key → User)
- `name`
- `description`
- `location`
- `price_per_night`
- `created_at`
- `updated_at`

---

### 3. Booking
- `booking_id` (Primary Key)
- `property_id` (Foreign Key → Property)
- `user_id` (Foreign Key → User)
- `start_date`
- `end_date`
- `total_price`
- `status` (pending, confirmed, canceled)
- `created_at`

---

### 4. Payment
- `payment_id` (Primary Key)
- `booking_id` (Foreign Key → Booking)
- `amount`
- `payment_date`
- `payment_method` (credit_card, paypal, stripe)

---

### 5. Review
- `review_id` (Primary Key)
- `property_id` (Foreign Key → Property)
- `user_id` (Foreign Key → User)
- `rating` (1 to 5)
- `comment`
- `created_at`

---

### 6. Message
- `message_id` (Primary Key)
- `sender_id` (Foreign Key → User)
- `recipient_id` (Foreign Key → User)
- `message_body`
- `sent_at`

---

## 🔗 Entity Relationships

- **User → Property**: One-to-Many (A user can host multiple properties.)
- **User → Booking**: One-to-Many (A user can make multiple bookings.)
- **User → Review**: One-to-Many (A user can write multiple reviews.)
- **User → Message (sent)**: One-to-Many (A user can send multiple messages.)
- **User → Message (received)**: One-to-Many (A user can receive multiple messages.)
- **Property → Booking**: One-to-Many (A property can have multiple bookings.)
- **Property → Review**: One-to-Many (A property can have multiple reviews.)
- **Booking → Payment**: One-to-One (Each booking has one payment.)

---

## 🗂 ERD File
The visual representation of this database is provided in the file:
- `ERD.drawio`

---

## ✅ Notes
- All foreign keys are properly linked to their referenced primary keys.
- The design follows best practices for relational databases.
- The ERD is normalized to prevent data redundancy.
