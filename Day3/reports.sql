-- Ticket count by status and assignee
SELECT u.name AS assignee, t.status, COUNT(t.id) AS ticket_count
FROM assignments a
JOIN users u ON a.user_id = u.id
JOIN tickets t ON a.ticket_id = t.id
GROUP BY u.name, t.status
ORDER BY u.name, t.status;

-- Customers having more than five open tickets
SELECT c.name as customer, COUNT(t.id) AS open_ticket_count
FROM customers c
JOIN tickets t ON c.id = t.customer_id
GROUP BY c.id, c.name
HAVING COUNT(t.id) > 5
ORDER BY open_ticket_count DESC;


-- Users with no assigned tickets
SELECT u.id, u.name
FROM users u
LEFT JOIN assignments a ON u.id = a.user_id
WHERE a.id IS NULL
ORDER BY u.name;

-- Oldest unresolved ticket
SELECT t.id, t.title, t.description, t.status, t.created_at, c.name as customer_name
FROM tickets t
JOIN customers c ON t.customer_id = c.id
WHERE t.status NOT IN ('resolved', 'closed')
ORDER BY t.created_at ASC
LIMIT 1;


-- Counts by category and priority
SELECT c.name AS category, t.priority, COUNT(t.id) AS ticket_count
FROM categories c
JOIN tickets t ON c.id = t.category_id
GROUP BY c.name, t.priority
ORDER BY c.name, t.priority;