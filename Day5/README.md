# Equipment Booking System

A PostgreSQL database for managing employees, equipment, bookings, approvals, categories and maintenance records.


## Tables

- `employees`: employee details
- `categories`: equipment categories
- `equipments`: equipment details and status
-  `bookings`: equipment bookings
- `approval`: booking approval details
-  `maintenances`: equipment maintenance records

## Files

- `schema.sql`: Database table creation
- `seed.sql`: Sample data
- `queries.sql`: 10 required queries
- `transaction.sql`: Booking approval transaction
- `index.sql`: Database index creation
- `reset.sql`: Clean database reset

## Setup

Connect to the `equipment_booking` database and run:

```sql
\i schema.sql
\i seed.sql
\i index.sql
```

## Reset Database

To reset and recreate the database tables:

```sql
\i reset.sql
\i schema.sql
\i seed.sql
\i index.sql
```
