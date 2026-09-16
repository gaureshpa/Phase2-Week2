-- Select all tickets
SELECT * FROM tickets;

-- Open tickets
SELECT * FROM tickets where status = 'open';

-- Select High priority tickets
SELECT * FROM tickets WHERE priority = 'high';

-- show tickets from new to old
SELECT * FROM tickets
ORDER BY created_at DESC;

-- Limit to 2 new tickets
SELECT * FROM tickets ORDER BY created_at DESC
LIMIT 2;

-- Update Ticket Status
UPDATE tickets SET status = 'resolved' WHERE id = 1;

-- Delete a comment
DELETE from comments WHERE id = 1;


