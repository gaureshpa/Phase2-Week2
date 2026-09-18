BEGIN;

UPDATE bookings
SET status = 'approved'
WHERE id = 2;

UPDATE approval
SET status = 'approved', approved_at = CURRENT_TIMESTAMP
WHERE booking_id = 2;

COMMIT;