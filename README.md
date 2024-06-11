Name : DHANSHREE SANJAY DESHMUKH

Company: CODTECH IT SOLUTIONS

ID : CT08DS1600

Domain : SQL

Duration : June to July 2024

Mentor : SRAVANI GOUNI

OVERVIEW Of Project

Project: Student Database Management

Objective: 

The aim of the Student Database Management System is to create a comprehensive and efficient platform for managing all aspects of student information, course enrollment, and academic records. This system seeks to enhance the accuracy, accessibility, and security of student data while streamlining administrative processes and supporting academic decision-making.

Key Features:
* Comprehensive Student Profiles:
Maintain detailed records of student personal information, including name, date of birth,email address.

* Course Management:
Store detailed information about courses, including course names, credit , max enrollments.

* Enrollment Management:
Store deatiled infromation about the grade .

Entities Used and Their Attributes:

1. Students:

id: Unique identifier for each student (Primary Key).

first_name: The first name of the student.

last_name: The last name of the student.

birth_date: The date of birth of the student.

email_address: The email address of the student.

2. Courses:

id: Unique identifier for each course (Primary Key).

course_name: The name of the course.

credits: The number of credits the course is worth.

max_enrollments: The number of students who can enroll.

3. Enrollments:

id: Unique identifier for each enrollment (Primary Key).

student_id: Identifier of the student (Foreign Key referencing Students).

course_id: Identifier of the course (Foreign Key referencing Courses).

grade: The grade that the student received for the course.

Relationships:

Students to Enrollments: One-to-Many. A single student can have multiple enrollments, but each enrollment record refers to only one student.

Courses to Enrollments: One-to-Many. A single course can have multiple enrollments, but each enrollment record refers to only one course.








![Output1](https://github.com/DhanshreeDeshmukh1/CODTECH.Task1/assets/156403286/eed374e3-4114-4079-b24c-6258842dd058)



Usage :

Adding a Student: Insert a record into the Students table.

Adding a Course: Insert a record into the Courses table.

Enrolling a Student in a Course: Insert a record into the Enrollments table with the StudentID and CourseID.

Querying Data: Use SQL queries to retrieve information such as which students are enrolled in a specific course, or what courses a particular student is taking.




