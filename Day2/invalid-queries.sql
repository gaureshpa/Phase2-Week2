-- Invalid priority
INSERT INTO tickets (customer_id, category_id, title, description, status, priority) VALUES 
(1, 1, 'Test Ticket', 'Test description', 'open', 'urget');

-- Duplicate email
INSERT INTO users(name, email) VALUES
('Mahesh', 'mahesh12@gmail.com');

-- Using a customer that doesn't exist
INSERT INTO tickets(customer_id, category_id, title, description, status, priority) VALUES
(9999, 1, 'Test Ticket', 'Test description', 'open', 'low');

-- Checking NOT NULL

INSERT into users(name, email) VALUES
(NULL, 'helen@gmail.com');