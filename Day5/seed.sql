-- 1. CATEGORIES

INSERT INTO categories (id, name) VALUES
(1, 'Cardio'),
(2, 'Strength Training'),
(3, 'Free Weights'),
(4, 'Accessories');


-- 2. EMPLOYEES

INSERT INTO employees (id, name, email) VALUES
(1, 'Aadith', 'aadithmr@gmail.com'),
(2, 'Abhiram N', 'abhiramn123@gmail.com'),
(3, 'Joseph Alan', 'josephalan38@gmail.com');


-- 3. EQUIPMENTS

INSERT INTO equipments (id, name, category_id, status) VALUES
(1, 'Treadmill', 1, 'available'),
(2, 'Leg Press Machine', 2, 'available'),
(3, 'Weight Plates', 3, 'available'),
(4, 'Kettlebells', 3, 'available'),
(5, 'Jump Rope', 4, 'available');


-- 4. MAINTENANCES

INSERT INTO maintenances (id, equipment_id, description, status) VALUES
(1, 1, 'Need a belt change', 'completed'),
(2, 1, 'Digital board flickering', 'completed'),
(3, 5, 'Fix tear on the ropes', 'pending');


-- 5. BOOKINGS

INSERT INTO bookings
(id, equipment_id, employee_id, start_date, end_date, status) VALUES
(1, 1, 1, '2026-09-18 09:00:00', '2026-09-18 10:00:00', 'approved'),
(2, 2, 2, '2026-09-18 11:00:00', '2026-09-18 12:00:00', 'pending'),
(3, 3, 3, '2026-09-19 09:00:00', '2026-09-19 10:30:00', 'approved'),
(4, 4, 1, '2026-09-20 14:00:00', '2026-09-20 15:00:00', 'cancelled'),
(5, 5, 2, '2026-09-21 16:00:00', '2026-09-21 17:00:00', 'pending');


-- 6. APPROVAL

INSERT INTO approval
(id, approver_id, booking_id, approved_at, status) VALUES
(1, 2, 1, '2026-09-17 10:00:00', 'approved'),
(2, 3, 2, NULL, 'pending'),
(3, 1, 3, '2026-09-17 11:00:00', 'approved'),
(4, 3, 4, NULL, 'rejected'),
(5, 1, 5, NULL, 'pending');