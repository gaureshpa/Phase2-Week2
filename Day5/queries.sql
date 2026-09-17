-- 1. List all employees
SELECT name, email FROM employees;

-- 2. List all equipments and its category
SELECT e.name, c.name
FROM equipments e
JOIN categories c ON e.category_id = c.id;


-- 3. Show all bookings with employee and equipment details
SELECT e.name AS employee_name, eq.name as equipment_name, b.start_date, b.end_date, b.status
FROM employees e
JOIN bookings b ON e.id = b.employee_id
JOIN equipments eq ON b.equipment_id = eq.id;


-- 4. Find all pending bookings date and name
SELECT b.id AS booking_id, eq.name AS equipment_name, emp.name AS employee_name, b.status
FROM bookings b
JOIN employees emp ON b.employee_id = emp.id
JOIN equipments eq ON b.equipment_id = eq.id
WHERE b.status = 'pending';


-- 5. Find who all approved bookings
SELECT emp.name as approved_by, a.status as approval_status
FROM approval a
JOIN employees emp ON emp.id = a.approver_id
WHERE a.status ='approved';


-- 6. Show booking approval details
SELECT b.id AS booking_id, a.status, emp.name as employee_name
FROM approval a
JOIN bookings b ON b.id = a.booking_id
JOIN employees emp ON emp.id = a.approver_id
WHERE a.status = 'approved';


-- 7. Show equipments currently under maintenance
SELECT e.name, m.status, m.date
FROM maintenances m
JOIN equipments e ON m.equipment_id = e.id
WHERE m.status = 'pending';


-- 8. Count bookings per employee
SELECT e.name, COUNT(b.id) as booking_count
FROM bookings b
JOIN employees e ON b.employee_id = e.id
GROUP BY e.id;


-- 9. Count equipments by category
SELECT c.name, COUNT(c.id) as count
FROM equipments e
JOIN categories c ON e.category_id = c.id
GROUP BY c.id;


-- 10. Find equipments with most bookings
SELECT e.name, COUNT(b.id) as bookings
FROM bookings b
JOIN equipments e ON b.equipment_id = e.id
GROUP BY e.id
ORDER BY bookings DESC;
