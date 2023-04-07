-- Create students table
CREATE TABLE Students (
student_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20),
date_of_birth DATE,
gender VARCHAR(10),
address VARCHAR(200),
city VARCHAR(50),
state VARCHAR(50),
zip_code VARCHAR(20)
);

-- Create teachers table
CREATE TABLE Teachers (
teacher_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
phone_number VARCHAR(20),
date_of_birth DATE,
gender VARCHAR(10),
address VARCHAR(200),
city VARCHAR(50),
state VARCHAR(50),
zip_code VARCHAR(20),
hire_date DATE,
salary DECIMAL(10, 2)
);

-- Create classes table
CREATE TABLE Classes (
class_id INT PRIMARY KEY,
class_name VARCHAR(100),
description VARCHAR(500),
start_date DATE,
end_date DATE,
teacher_id INT,
FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Create enrollments table
CREATE TABLE Enrollments (
enrollment_id INT PRIMARY KEY,
student_id INT,
class_id INT,
enrollment_date DATE,
FOREIGN KEY (student_id) REFERENCES Students(student_id),
FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Create assignments table
CREATE TABLE Assignments (
assignment_id INT PRIMARY KEY,
class_id INT,
assignment_name VARCHAR(100),
description VARCHAR(500),
due_date DATE,
FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Sample query: get all students enrolled in a specific class
SELECT s.first_name, s.last_name, c.class_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Classes c ON e.class_id = c.class_id
WHERE c.class_name = 'Biology';




