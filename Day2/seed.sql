-- Users

INSERT INTO users (name, email) VALUES
('Mahesh', 'mahesh12@gmail.com'),
('Neville', 'neville23@gmail.com');


-- Customers

INSERT INTO customers (name, email) VALUES
('Bevin Martin', 'bevin23@yahoo.com'),
('Pranav P', 'pranav34@yahoo.com');


-- Categories
INSERT INTO categories (name) VALUES
('Technical'), ('Payment'), ('Shipping');


-- Tickets

INSERT INTO tickets (customer_id, category_id, title, description, status, priority) VALUES
(1, 1, 'Login not working', 'Customer cannot login to their account', 'open', 'high'),
(2, 2, 'Incorrect billing amount', 'Customer was charged 4% more than the billing amount', 'open', 'high'),


-- Comments

INSERT INTO comments (ticket_id, user_id, body) VALUES
(1, 1, 'I found a bug with user login'),
(2, 1, 'The billing information is being checked');


-- Assignments

INSERT INTO assignments (ticket_id, user_id) VALUES
(1, 1),
(2, 1);


-- Status History

INSERT INTO status_history (ticket_id, status, changed_by) VALUES
(1, 'open', 1),
(2, 'open', 2),
(2, 'in-progress', 2);