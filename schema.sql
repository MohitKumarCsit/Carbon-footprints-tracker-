-- DATABASE CREATION & SELECTION
CREATE DATABASE IF NOT EXISTS CarbonDB;
USE CarbonDB;

-- TABLE STRUCTURES (Schema Design)
CREATE TABLE USER_ACTIVITY (
    user_id INT,
    name VARCHAR(50),
    record_id INT PRIMARY KEY,
    activity_id INT,
    quantity DECIMAL(10, 2),
    date DATE
);

CREATE TABLE EMISSIONS (
    record_id INT,
    emission_value DECIMAL(10, 2),
    FOREIGN KEY (record_id) REFERENCES USER_ACTIVITY(record_id)
);

-- INSERTING SELECTION-ORIENTED DUMMY DATA
INSERT INTO USER_ACTIVITY (user_id, name, record_id, activity_id, quantity, date) VALUES
(1, 'Rahul', 1, 1, 100.00, '2026-04-01'),
(1, 'Rahul', 8, 3, 40.00,  '2026-04-04'),
(2, 'Priya', 2, 2, 50.00,  '2026-04-01'),
(3, 'Aman',  3, 3, 70.00,  '2026-04-02'),
(4, 'Neha',  4, 1, 120.00, '2026-04-02'),
(5, 'Rohit', 5, 2, 60.00,  '2026-04-03'),
(6, 'Sneha', 6, 4, 80.00,  '2026-04-03'),
(7, 'Arjun', 7, 5, 90.00,  '2026-04-04');

INSERT INTO EMISSIONS (record_id, emission_value) VALUES
(1, 50.00),
(2, 25.50),
(3, 35.00),
(4, 43.00);

-- ANALYTICAL QUERY FOR TOTAL EMISSIONS
SELECT SUM(e.emission_value) AS total_emission
FROM USER_ACTIVITY ua
JOIN EMISSIONS e ON ua.record_id = e.record_id;
