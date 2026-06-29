USE CarbonDB;

-- USERS DATA
INSERT INTO USERS (user_id, name) VALUES
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Aman'),
(4, 'Neha'),
(5, 'Rohit'),
(6, 'Sneha'),
(7, 'Arjun');

-- ACTIVITIES DATA
INSERT INTO ACTIVITIES (activity_id, activity_type) VALUES
(1, 'Transport'),
(2, 'Electricity'),
(3, 'Cooking'),
(4, 'Waste'),
(5, 'Travel');

-- USER ACTIVITY DATA
INSERT INTO USER_ACTIVITY (record_id, user_id, activity_id, quantity, date) VALUES
(1, 1, 1, 100.00, '2026-04-01'),
(2, 2, 2, 50.00,  '2026-04-01'),
(3, 3, 3, 70.00,  '2026-04-02'),
(4, 4, 1, 120.00, '2026-04-02'),
(5, 5, 2, 60.00,  '2026-04-03'),
(6, 6, 4, 80.00,  '2026-04-03'),
(7, 7, 5, 90.00,  '2026-04-04');

-- EMISSIONS DATA
INSERT INTO EMISSIONS (record_id, emission_value) VALUES
(1, 50.00),
(2, 25.50),
(3, 35.00),
(4, 60.00),
(5, 30.00),
(6, 45.00),
(7, 55.00);
