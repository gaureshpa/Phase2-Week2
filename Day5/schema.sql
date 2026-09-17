-- 1. CATEGORIES

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);


-- 2. EMPLOYEE

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);


-- 3. EQUIPMENTS

CREATE TABLE equipments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INTEGER NOT NULL,
    status VARCHAR(30) NOT NULL CHECK (status IN ('available', 'maintenance')),

    FOREIGN KEY (category_id) REFERENCES categories(id)
);


-- 4. MAINTENANCE

CREATE TABLE maintenances (
    id SERIAL PRIMARY KEY,
    equipment_id INTEGER NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    description TEXT NOT NULL,
    status VARCHAR(30) NOT NULL CHECK (status IN ('pending', 'completed')),

    FOREIGN KEY (equipment_id) REFERENCES equipments(id)
);


-- 5. BOOKING

CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    equipment_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    start_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP NOT NULL,
    status VARCHAR(30) NOT NULL CHECK(status IN ('pending', 'approved', 'cancelled')),

    FOREIGN KEY (equipment_id) REFERENCES equipments(id),
    FOREIGN KEY (employee_id) REFERENCES employees(id),

    CHECK (end_date > start_date)
);


-- 6. APPROVAL

CREATE TABLE APPROVAL (
    id SERIAL PRIMARY KEY,
    approver_id INTEGER NOT NULL,
    booking_id INTEGER NOT NULL UNIQUE,
    approved_at TIMESTAMP,
    status VARCHAR(30) NOT NULL CHECK (status IN ('pending', 'approved', 'rejected')),
    
    FOREIGN KEY (approver_id)  REFERENCES employees(id),
    FOREIGN KEY (booking_id) REFERENCES bookings(id)
);
