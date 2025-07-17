-- 1) Database Setup --

CREATE database student_database;
USE student_database;

CREATE TABLE student_table (
    Student_id INT PRIMARY KEY,
    Stu_name VARCHAR(100),
    Department VARCHAR(100),
    email_id VARCHAR(100),
    Phone_no BIGINT,
    Address VARCHAR (255),
    Date_of_birth DATE,
    Gender VARCHAR(10),
    Major VARCHAR(100),
    GPA DECIMAL(3,2),
    Grade CHAR(1)
);

-- 2) Data Entry using INSERT command --

INSERT INTO student_table VALUES
(201, 'Aarav', 'Computer Science', 'aarav@example.com', 9876543210, '12 MG Road, Delhi', '2003-01-15', 'Male', 'AI', 4.50, 'A'),
(202, 'Bhavya', 'Mechanical Engineering','bhavya@example.com', 9876543211, '34 Park Lane, Kolkata', '2002-03-22', 'Female', 'Robotics', 3.80, 'A'),
(203, 'Chirag', 'Electronics', 'chirag@example.com', 9876543212, '56 Jubilee Hills, Hyderabad', '2003-07-10', 'Male', 'VLSI', 3.20, 'B'),
(204, 'Diksha', 'Civil Engineering', 'diksha@example.com', 9876543213, '78 Marine Drive, Mumbai', '2002-11-05', 'Female', 'Structures', 2.90, 'B'),
(205, 'Eshan', 'Information Technology','eshan@example.com', 9876543214, '90 Anna Salai, Chennai', '2003-05-30', 'Male', 'Cybersecurity', 2.60, 'C'),
(206, 'Fatima', 'Computer Science', 'fatima@example.com', 9876543215, '11 Connaught Place, Delhi', '2003-08-17', 'Female', 'Data Science', 4.80, 'A'),
(207, 'Gaurav', 'Biotechnology', 'gaurav@example.com', 9876543216, '22 Koregaon Park, Pune', '2003-04-25', 'Male', 'Genetic Engineering', 3.40, 'B'),
(208, 'Hina', 'Electrical Engineering','hina@example.com', 9876543217, '33 SG Highway, Ahmedabad', '2002-09-12', 'Female', 'Power Systems', 2.30, 'C'),
(209, 'Nyka', 'Mechanical Engineering','nyka@example.com', 9876543218, '44 Infopark, Kochi', '2003-12-03', 'Female', 'Automobile Engineering', 3.70, 'A'),
(210, 'Jaya', 'Electronics', 'jaya.latha@example.com', 9876543219, '55 MI Road, Jaipur', '2003-02-28', 'Female', 'Embedded Systems', 2.10, 'D')
;

SELECT * FROM student_table;

-- 3) Student Information Retrieval --
SELECT * FROM student_table order by Grade DESC;

-- 4) Male Students --
SELECT * FROM student_table WHERE Gender = 'Male';

-- 5) Students with GPA less than 5.0 --
SELECT * FROM student_table WHERE GPA < 5.0;

-- 6) Update Student Email and Grade --
UPDATE student_table 
SET email_id = 'jaya@example.com', Grade = 'C'
WHERE Student_ID = '210';

-- 7) Query for Students Name & Age with Grade "B" --
SELECT Stu_name, TIMESTAMPDIFF(YEAR, Date_of_birth, CURDATE()) AS Age, Grade
FROM student_table
WHERE Grade ='B';

-- 8) Groupby "Department" and "Gender" and calculate Avg GPA for each combination --
SELECT Department, Gender, round(AVG(GPA), 2) AS Average_GPA
FROM student_table
GROUP BY Department, Gender;

-- 9) Rename Table as "student_info" --
RENAME TABLE student_table TO student_info; 

SELECT * FROM student_info;

-- 10) Retrieve Student Name with Highest GPA --
SELECT Stu_name
FROM student_info
ORDER BY GPA DESC
LIMIT 1;

