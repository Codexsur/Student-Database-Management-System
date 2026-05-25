CREATE DATABASE student_management;

USE student_management;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department VARCHAR(50),
    age INT,
    marks INT
);

INSERT INTO students (name, department, age, marks) VALUES
('Rahul Sharma', 'CSE', 20, 85),
('Priya Singh', 'ECE', 21, 78),
('Aman Verma', 'ME', 22, 88),
('Sneha Das', 'CSE', 20, 92),
('Rohit Kumar', 'EEE', 21, 74);

-- View all students
SELECT * FROM students;

-- Students with marks above 80
SELECT * FROM students
WHERE marks > 80;

-- Update student marks
UPDATE students
SET marks = 90
WHERE student_id = 2;

-- Delete a student record
DELETE FROM students
WHERE student_id = 5;

-- Average marks department-wise
SELECT department, AVG(marks) AS average_marks
FROM students
GROUP BY department;

-- Count students in each department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;
