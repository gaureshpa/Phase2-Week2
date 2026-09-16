-- Reset training DB

DROP TABLE IF EXISTS status_history;
DROP TABLE IF EXISTS assignments;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS users;

-- Recreate tables
\i schema.sql

-- Insert Seed data
\i seed.sql
