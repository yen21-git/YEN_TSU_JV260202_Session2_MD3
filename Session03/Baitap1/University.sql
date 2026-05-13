CREATE DATABASE university_db;
USE  university_db;
CREATE TABLE classes (
    class_id VARCHAR(10) PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    major VARCHAR(100) NOT NULL
);
CREATE TABLE students (
    student_id VARCHAR(10) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    class_id VARCHAR(10) NOT NULL,

    CONSTRAINT fk_class
        FOREIGN KEY (class_id)
        REFERENCES classes(class_id)
);
