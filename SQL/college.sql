CREATE DATABASE College;

USE College;

CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(20),
  Address VARCHAR(200),
  Major VARCHAR(50)
);

CREATE TABLE Courses (
  CourseID INT PRIMARY KEY,
  CourseName VARCHAR(100) NOT NULL,
  Credits INT,
  Department VARCHAR(50)
);

CREATE TABLE Professors (
  ProfessorID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) UNIQUE,
  Phone VARCHAR(20),
  OfficeLocation VARCHAR(200),
  Department VARCHAR(50)
);

CREATE TABLE Enrollments (
  EnrollmentID INT PRIMARY KEY,
  StudentID INT NOT NULL,
  CourseID INT NOT NULL,
  Semester VARCHAR(10),
  Year INT,
  Grade VARCHAR(2),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Teaches (
  ProfessorID INT NOT NULL,
  CourseID INT NOT NULL,
  PRIMARY KEY (ProfessorID, CourseID),
  FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID),
  FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

CREATE TABLE Departments (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(50) NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
  (1, 'Computer Science'),
  (2, 'Business'),
  (3, 'English');

ALTER TABLE Students
ADD DepartmentID INT NOT NULL;

ALTER TABLE Students
ADD FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);
