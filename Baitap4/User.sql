CREATE DATABASE user_db;
USE user_db;
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,

    username VARCHAR(50) UNIQUE,

    password VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE,

    status VARCHAR(20) DEFAULT 'ACTIVE'
);
ALTER TABLE users
ADD CONSTRAINT chk_status
CHECK (status IN ('ACTIVE', 'INACTIVE'));
INSERT INTO users (username, password, email)
VALUES ('yen2004', '123456', 'yen@gmail.com');
SELECT * FROM users;