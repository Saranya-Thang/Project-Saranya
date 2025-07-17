-- 1.Database Creation
CREATE Database ams_db;
USE ams_db;

CREATE TABLE StudentInfo (
    STU_ID INT PRIMARY KEY,
    STU_NAME VARCHAR(100),
    DOB DATE,
    PHONE_NO VARCHAR(15),
    EMAIL_ID VARCHAR(100),
    ADDRESS VARCHAR(255)
);

CREATE TABLE CoursesInfo (
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(100),
    COURSE_INSTRUCTOR_NAME VARCHAR(100)
);

CREATE TABLE EnrollmentInfo (
    ENROLLMENT_ID INT PRIMARY KEY,
    STU_ID INT,
    COURSE_ID INT,
    ENROLL_STATUS ENUM('Enrolled', 'Not Enrolled'),
    FOREIGN KEY (STU_ID) REFERENCES StudentInfo(STU_ID),
    FOREIGN KEY (COURSE_ID) REFERENCES CoursesInfo(COURSE_ID)
);


-- 2.Data Creation


INSERT INTO StudentInfo VALUES
(1, 'Alice', '2000-01-01', '9876543210', 'alice@example.com', 'Chennai'),
(2, 'Bob', '1999-03-15', '9876543211', 'bob@example.com', 'Delhi'),
(3, 'Carol', '2001-07-10', '9876543212', 'carol@example.com', 'Mumbai');

INSERT INTO CoursesInfo VALUES
(101, 'Maths', 'Dr. Rao'),
(102, 'Physics', 'Dr. Iyer'),
(103, 'Chemistry', 'Dr. Mehta');

INSERT INTO EnrollmentInfo VALUES
(1, 1, 101, 'Enrolled'),
(2, 1, 102, 'Enrolled'),
(3, 2, 101, 'Enrolled'),
(4, 3, 103, 'Not Enrolled');

select * From StudentInfo;
select * From CoursesInfo;
select * From EnrollmentInfo;




-- 3) retrieve the Student Information

-- a) Student details with contact and enrollment status
SELECT s.STU_NAME, s.EMAIL_ID, s.PHONE_NO, e.ENROLL_STATUS
FROM StudentInfo s
JOIN EnrollmentInfo e ON s.STU_ID = e.STU_ID;

-- b) Courses a specific student is enrolled in
SELECT c.COURSE_NAME
FROM CoursesInfo c
JOIN EnrollmentInfo e ON c.COURSE_ID = e.COURSE_ID
JOIN StudentInfo s ON e.STU_ID = s.STU_ID
WHERE s.STU_NAME = 'Alice';

-- c) Course name and instructor
SELECT COURSE_NAME, COURSE_INSTRUCTOR_NAME FROM CoursesInfo;

-- d) Course info for specific course
SELECT * FROM CoursesInfo WHERE COURSE_ID = 101;

-- e) Course info for multiple courses
SELECT * FROM CoursesInfo WHERE COURSE_ID IN (101, 102, 103);

-- 4. Reporting and Analytics (Using joining queries)

-- a) Number of students enrolled per course
SELECT c.COURSE_NAME, COUNT(e.STU_ID) AS Enrolled_Students
FROM CoursesInfo c
JOIN EnrollmentInfo e ON c.COURSE_ID = e.COURSE_ID
WHERE e.ENROLL_STATUS = 'Enrolled'
GROUP BY c.COURSE_ID;

-- b) List of students in a specific course
SELECT s.STU_ID, s.STU_NAME
FROM StudentInfo s
JOIN EnrollmentInfo e ON s.STU_ID = e.STU_ID
WHERE e.COURSE_ID = 101 AND e.ENROLL_STATUS = 'Enrolled';

-- c) Count of enrolled students per instructor
SELECT c.COURSE_INSTRUCTOR_NAME, COUNT(e.STU_ID) AS Enrolled_Students
FROM CoursesInfo c
JOIN EnrollmentInfo e ON c.COURSE_ID = e.COURSE_ID
WHERE e.ENROLL_STATUS = 'Enrolled'
GROUP BY c.COURSE_INSTRUCTOR_NAME;

-- d) Students enrolled in multiple courses
SELECT S.STU_ID, S.STU_NAME
FROM StudentInfo s
JOIN EnrollmentInfo e ON s.STU_ID = e.STU_ID
WHERE ENROLL_STATUS = 'Enrolled'
GROUP BY S.STU_ID
HAVING COUNT(COURSE_ID) > 1;

-- e) Courses by highest enrolled students
SELECT c.COURSE_NAME, COUNT(e.STU_ID) AS Enrollments
FROM CoursesInfo c
JOIN EnrollmentInfo e ON c.COURSE_ID = e.COURSE_ID
WHERE e.ENROLL_STATUS = 'Enrolled'
GROUP BY c.COURSE_ID
ORDER BY Enrollments DESC;
