CREATE INDEX idx_tickets_customer_created_at
ON tickets (customer_id, created_at DESC);
