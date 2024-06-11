--INSERT NEW VALUE IN STUDENT TABLE
INSERT INTO "students" ("first_name","last_name","birth_date","email_address")
VALUES  ('John', 'Doe', '2001-04-23', 'john.doe@example.com'),
        ('Jane', 'Smith', '2000-11-19', 'jane.smith@example.com'),
        ('Michael', 'Brown', '1999-07-15', 'michael.brown@example.com'),
        ('Emily', 'Davis', '2002-02-28', 'emily.davis@example.com'),
        ('Daniel', 'Wilson', '2001-09-05', 'daniel.wilson@example.com'),
        ('Laura', 'Martinez', '2000-06-17', 'laura.martinez@example.com'),
        ('James', 'Taylor', '1998-12-30', 'james.taylor@example.com'),
        ('Olivia', 'Anderson', '2002-03-22', 'olivia.anderson@example.com'),
        ('Ethan', 'Thomas', '2001-08-14', 'ethan.thomas@example.com'),
        ('Sophia', 'Moore', '1999-10-27', 'sophia.moore@example.com');


-- --INSERT NEW VALUE IN COURSES TABLE
INSERT INTO "courses" ("course_name","credits","max_enrollments")
VALUES ('Introduction to Computer Science',4,20),
       ('Principles of Economics',3,40),
       ('Introduction to Psychology',3,50),
       ('Organic Chemistry',4,30),
       ('Introdution to programming',5,20);

-- --INSERT NEW VALUE IN ENROLLMENTS TABLE
INSERT INTO "enrollments"("student_id","course_id","grade")
VALUES (1,1,8),
       (2,2,9),
       (3,3,7),
       (4,4,10),
       (5,5,6);

--SELECTING ALL VALUES FROM STUDENTS TABLE
SELECT * FROM "students";

--SELECTING ALL VALUES FROM COURSES TABLE
SELECT * FROM "courses";

--SELECTING ALL VALUES FROM ENROLLMENTS TABLE
SELECT * FROM "enrollments";

-- --FIND ALL COURSES  ENROLLED BY A STUDENT
SELECT 
    "courses".'Course_name', 
    "enrollments".'grade'
FROM 
    "enrollments"
JOIN 
    "courses" ON "enrollments".'course_id' = "courses".'id'
WHERE 
    "enrollments".'student_id' = 1;

--FIND ALL COURSES GIVEN NAME OF STUDENT
SELECT 
    "students".'id',
    "students".'first_name', 
    "students".'last_name',
    "enrollments".'grade'
FROM 
    "enrollments"
JOIN 
    "students" ON "enrollments".'student_id' = "students".'id'
WHERE 
    "enrollments".'course_id' = 5;

--Count the number of students
SELECT COUNT(*) AS "StudentCount" FROM "students";

--DELETING A RECORD
DELETE FROM "students"
WHERE 'id' = 2;

--UPDATING A RECORD
UPDATE "enrollments"
SET 'grade' = 8
WHERE 'enrollment_id = 3;
