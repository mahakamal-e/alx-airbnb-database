# Database Normalization - Airbnb Database Project

## 🎯 Objective
The purpose of normalization is to ensure that the database design is efficient, free of redundancies, and that data integrity is maintained. The target is to achieve the **Third Normal Form (3NF)**.

---

## ✅ Normalization Process

### First Normal Form (1NF)
- **Requirement:** All attributes must contain atomic (indivisible) values, and each record must be unique.
- **Status:** Achieved.
- **Reason:** All attributes in the database contain single, indivisible values (e.g., first_name, last_name, email, etc.). There are no repeating groups.

---

### Second Normal Form (2NF)
- **Requirement:** The database must be in 1NF, and all non-key attributes must depend on the entire primary key (no partial dependency).
- **Status:** Achieved.
- **Reason:** 
   - Each table has a single-attribute primary key (UUID), so no partial dependencies exist.
   - All non-key attributes fully depend on the primary key of their respective tables.

---

### Third Normal Form (3NF)
- **Requirement:** The database must be in 2NF, and all attributes must depend only on the primary key (no transitive dependency).
- **Status:** Achieved.
- **Reason:** 
   - All attributes in each table depend directly on the primary key.
   - No attribute depends on another non-key attribute.
   - Example: In the `Booking` table, attributes like `start_date`, `end_date`, and `total_price` depend only on `booking_id`.

---

## 📚 Conclusion
The Airbnb database design is **fully normalized to 3NF**:
- Data redundancy is minimized.
- Data integrity is maintained.
- All normalization rules have been satisfied.

No further normalization steps were required as the initial schema provided was already in 3NF.
