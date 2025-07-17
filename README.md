#**Project- Saranya**

## Overview

This repository contains multiple SQL projects demonstrating various database management and analysis techniques. The projects are organized into the following tasks:

1. *Academic Management System*: A system to manage student information and course enrollments.
2. *Student Database Management System*: A PostgreSQL-based student database with functionalities for retrieval, updates, and group calculations.
3. *Event Management System*: A system to handle events, attendees, and registrations using PostgreSQL.
4. *OLAP Operations*: Analysis of sales data using OLAP operations in Redshift or PostgreSQL.

## Project 1: **Task** **1** : **Academic Management System **

The Academic management system aims to have Student information, Course information and Enrollment information.

1. Database Creation: Creating following tables - Student information, Course information and Enrollment information. 
  [Full Code Link](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/code.sql)
2. Data Creation: Inserting the sample records of data in the tables
   ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/2.Courses_info_records.png)
   ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/2.Student_info_records.png)
   ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/2.Enrollment_info_records.png)
3.Retrive Student Information

a. Query to retrieve student details
   ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Student_info_3a.png)

b. Query to retrieve a list of courses by "enrolled" filter
    ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Course_list_3b.png)
    
c. Query to retrieve course details
    ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Course_Info_3c.png)

d. Query to retrieve course details for a specific course
    ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Specific_Course_Info_3d.png)
    
e. Query to retrieve course details for multiple course
    ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Multiple_Course_Info_3e.png)

4. Reporting and Analytics using Join Queries

a. Query to retrieve number of students enrolled in each course
![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Students_Enrolled_Per_Course_4a.png)


b. Query to retrieve students enrolled in specific course
![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Students_Enrolled_Specific_Course_4b.png)

c. Query to retrieve count of enrolled students for each instructor
![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Students_Count_Per_Instructor_4c.png)

d. Query to retrieve count of enrolled students in multiple courses
![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Students_Enrolled_Multiple_Course_4d.png)

e. Query to retrieve list of courses having highest number of enrolled students arranged from highest to lowest
![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task1_Academic_Management_System/Highest_Enrolled_Courses_4e.png)

**Task** **2** : **Student Database Management System**

The Student Database management system aims to have Student information including their department, contact address, DOB and scores.

   1. Database Setup: Creating database Student_Database and table student_table
   2. Data Entry: Inserting 10 sample records of data in the student_table
Code Link: [Data Entry](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/code.sql)

NOTE: Subtask 1 and 2 outputs are merged
 ![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/2_Data_Entry.png)

3.Student Information Retrieval: Query to retrieve all students information from the student_table and sorting them in descending order by their grade.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/3_Student_Info_DESC_Grade.png)

4.Query for Male Students: Query to retrieve information about all male students from the student_table

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/4_Male_Students.png)

5. Query for Students with GPA less than 5.0: Query to fetch the details of students who have a GPA less than 5.0 from the student table

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/5_Student_GPA_5Less.png)

6. Update Student Email and Grade: Update Query statement to modify the email and grade of a student with a specific ID in the student table

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/6_Update_Student_Email_Grade.png)

7. Query for Students with Grade B: Query to retrieve the names and ages of all students who have a grade of B from the student table

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/7_Student_Age_Grade_B.png)

8. Query for Grouping and Calculation: Query to group the student_table by the Department and Gender columns and calculate the average GPA for each combination

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/8_Grouping_Calculation.png)

9. Query for Table Renaming: Query to rename the student_table to student_info using the appropriate SQL statement

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/9_Table_Rename.png)

10. Query for Retrieving Student with Highest GPA: Query to retrieve the name of the student with the highest GPA from the student info table.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task2_Student_Database_System/10_Student_Highest_GPA.png)

**Task** **3** : **Event Management System**

This task develops the application that allows users to create and manage events, track attendees, and handle event registrations efficiently.

 1.Database Creation: Creating database EventsManagement and tables for tables for Events, Attendees, and Registrations

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/1_Database_Creation.png)

  2. Data Creation: Inserting sample records of data for Events, Attendees, and Registrations tables with respective fields.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/2_Data_Creation.png)

3. Manage Event Details: Query to perform Insert Update and Delete operations on Event Table.

a) Inserting a New Event

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/3a_Insert_New_Event.png)

b) Updating an Event's Information

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/3b_Update_Event_Info.png)

c) Deleting an event

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/3c_Delete_Event.png)

4. Manage Track Attendees Handle Events: Query to insert and register new attendee.
a) Inserting a new attendee

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/4a_Insert_New_Attendee.png)

b) Registering an attendee for an event.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/4b_Register_Attendee_For_Event.png)

5. Develop queries to retrieve event information, generate attendee lists, and calculate event attendance statistics.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task3_Event_Management_System/5_Retrieve_Event_Info%2CGenerate_Attendee_List%2CEvent_Attendance_Statistics.png)

**Task** **4** : **OLAP Operations**

Objective: Perform OLAP operations (Drill Down, Rollup, Cube, Slice, and Dice) on the sales_sample table to analyze sales data.

1. Database Creation: Creating a database to store the sales data and a table named sales_sample with the columns: Product_ld, Region, Date, Sales_Amount

2. Data Creation: Inserting 10 sample records into the sales_sample table, representing sales data.

Code Link: [Full Code Link](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/code.sql)

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/Data_Creation.png)


3. Performing OLAP operations:

a) Drill Down- Query to perform drill down from region to product level to understand sales performance

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/a_DrillDown.png)

b) Rollup- A query to perform roll up from product to region level to view total sales by region.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/b_RollUp.png)

c) Cube - A query to explore sales data from different perspectives, such as product, region, and date. As MYSQL does not support CUBE keyword, we have used UNION ALL.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/c_Cube.png)

d)Slice- A query to slice the data to view sales for a particular region or date range.

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/d_Slice.png)

e) Dice - A query to view sales for specific combinations of product, region, and date

![Alt Text](https://github.com/Saranya-Thang/Project-Saranya/blob/main/Task4_OLAP_Operations/e_Dice.png)
