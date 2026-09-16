-- Add relation between COMMENTS and USER table
ALTER TABLE comments
ADD COLUMN user_id INTEGER NOT NULL;

ALTER TABLE comments
ADD CONSTRAINT comments_user_id_fkey
FOREIGN KEY (user_id) REFERENCES users(id);


-- Add a priority attribute to TICKETS table
ALTER TABLE ticketsADD COLUMN priority VARCHAR(20) NOT NULL
CHECK (priority IN ('low', 'medium', 'high'));
