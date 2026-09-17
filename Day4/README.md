# Transactions and Indexes

Practised PostgreSQL transactions and indexes to protect multi-step operations and understand query performance.

## Transactions

Implemented transactional ticket reassignmenet.

The transactions:

- Unassigns the current user
- Assigns a new user
- Adds a status history record
- Adds a system comment
- Uses `COMMIT` when all operations succeeds.
- Uses `ROLLBACK` when an operation fails.

A deliberate failure was set up through an invalid foregin key to demonstrate rollback and verify that previous changes were undone.

## Indexes

Used `EXPLAIN` to inspect the query plan for:

```sql
SELECT id, title, status, priority, created_at
FROM tickets
WHERE customer_id = 1
ORDER BY created_at DESC;
```

Created an index on `customer_id` and `created_at`. PostgreSQL continued to use a sequential scan because the training database contains very few rows, making a sequential scan cheaper.