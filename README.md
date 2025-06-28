# ALX Airbnb Database Project

This project is part of the **ALX Pro-Dev Backend** and focuses on designing and building a robust relational database for an **Airbnb-like application.**

The project simulates a real-world system that manages users, properties, bookings, payments, reviews, and messages, similar to the core functionalities of Airbnb.

---

## 🏆 Project Objectives

- Design a fully normalized relational database.
- Create an Entity-Relationship Diagram (ERD) to visualize the system.
- Write SQL scripts to build the database schema (DDL).
- Seed the database with realistic sample data (DML).
- Provide clear and professional documentation.

---

## 📂 Repository Structure

```text
alx-airbnb-database/
├── ERD/
│   ├── ERD.drawio           # Entity-Relationship Diagram
│   └── requirements.md      # Documentation of entities and relationships
├── database-script-0x01/
│   ├── schema.sql           # SQL script to create the database schema (DDL)
│   └── README.md            # Documentation for schema design and implementation
├── database-script-0x02/
│   ├── seed.sql             # SQL script to insert sample data (DML)
│   └── README.md            # Documentation for the seeding process
├── normalization.md         # Normalization steps and explanation to achieve 3NF
└── README.md                # Project overview (this file)
```
--

## 💻 Project Summary

User Management: Supports guest, host, and admin roles.

Property Listings: Allows hosts to list multiple properties.

Booking System: Enables property bookings with statuses: pending, confirmed, canceled.

Payment Processing: Connects each booking to its payment record.

Reviews System: Allows users to leave reviews for properties they have booked.

Messaging System: Enables direct user-to-user communication within the platform.

--

## ⚙️ Tasks Breakdown

| Task | Description |
|------|-------------|
| Task 0: Define Entities and Relationships | Identify all entities and their attributes. Define relationships between entities. Create an ERD using Draw.io and document it in `ERD/requirements.md`. |
| Task 1: Normalize Your Database Design | Apply normalization principles to ensure the database is in Third Normal Form (3NF). Document the normalization process in `normalization.md`. |
| Task 2: Design Database Schema (DDL) | Write SQL `CREATE TABLE` statements to define the database schema with proper data types, primary keys, foreign keys, constraints, and indexes. Document this step in `database-script-0x01/README.md`. |
| Task 3: Seed the Database with Sample Data | Write SQL `INSERT` statements to add realistic sample data for users, properties, bookings, payments, reviews, and messages. Document this step in `database-script-0x02/README.md`. |
| Task 4: Manual Review | Final submission for manual review through the ALX program. |

---

## 📚 Technologies Used

- MySQL / SQL
- Draw.io (diagrams.net) for ER diagram creation
- GitHub for version control and documentation
- Markdown for writing project documentation

---

## ✅ Learning Outcomes

- Build scalable, normalized relational databases.
- Apply industry best practices for database design and optimization.
- Write production-quality SQL scripts (DDL & DML).
- Visualize and document database architecture using ERD.
- Collaborate and manage database projects using GitHub.

---

## 👤 Author

Maha Kamal

---
