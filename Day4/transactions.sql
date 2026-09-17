-- Update assignee, insert history and add a system comment as one transaction
BEGIN;

UPDATE assignments
SET unassigned_at = CURRENT_TIMESTAMP
WHERE ticket_id = 1 AND unassigned_at  IS NULL;

INSERT INTO assignments (ticket_id, user_id)
VALUES(1, 2);

INSERT INTO status_history (ticket_id, status, changed_by)
SELECT id, status, 2
FROM tickets
WHERE id = 1;

INSERT INTO comments (ticket_id, user_id, body)
VALUES (1, 2, 'System: Ticket reassigned');

COMMIT;


--  Rollback when any operation fails (Demo with invalid query)

BEGIN;

UPDATE assignments
SET unassigned_at = CURRENT_TIMESTAMP
WHERE ticket_id = 2
AND unassigned_at IS NULL;

INSERT INTO assignments (ticket_id, user_id)
VALUES (2, 99);

INSERT INTO comments (ticket_id, user_id, body)
VALUES(2, 1, 'System: Ticket reassignment test');

ROLLBACK;