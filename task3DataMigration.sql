-- Step 1: Create the PostgreSQL database (only run this in `psql` if not created)
CREATE DATABASE my_postgres_db;
\c my_postgres_db; -- Switch to the new database

-- Step 2: Create the `users` table
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Step 3: Insert data into `users` table
INSERT INTO users (name, email) VALUES
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com');

-- Step 4: Verify data insertion
SELECT * FROM users;
