CREATE TABLE USERS (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE ACTIVITIES (
    activity_id INT PRIMARY KEY,
    activity_type VARCHAR(50)
);

CREATE TABLE USER_ACTIVITY (
    record_id INT PRIMARY KEY,
    user_id INT,
    activity_id INT,
    quantity DECIMAL(10,2),
    date DATE,
    FOREIGN KEY (user_id) REFERENCES USERS(user_id),
    FOREIGN KEY (activity_id) REFERENCES ACTIVITIES(activity_id)
);

CREATE TABLE EMISSIONS (
    record_id INT PRIMARY KEY,
    emission_value DECIMAL(10,2),
    FOREIGN KEY (record_id) REFERENCES USER_ACTIVITY(record_id)
);
