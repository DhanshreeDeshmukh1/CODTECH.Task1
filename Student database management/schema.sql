--CREATING STUDENT TABLE
CREATE TABLE IF NOT EXISTS"students"(
     "id" INTEGER ,
     "first_name" TEXT NOT NULL,
     "last_name" TEXT NOT NULL,
     "birth_date" TEXT NOT NULL, 
     "email_address" TEXT NOT NULL UNIQUE,
     PRIMARY KEY("id")
     );

--CREATING COURSES TABLE
CREATE TABLE IF NOT EXISTS"courses"(
     "id" INTEGER, 
     "course_name" TEXT,
     "credits" INTEGER,
     "max_enrollments" INTEGER,
     PRIMARY KEY("id")
     );

--CREATING ENROLLMENTS TABLE
CREATE TABLE IF NOT EXISTS"enrollments"(
     "id" INTEGER,
     "student_id" INTEGER,
     "course_id" INTEGER,
     "grade" INTEGER,
     PRIMARY KEY("id"),
     FOREIGN KEY ("student_id") REFERENCES "students"("id"),
     FOREIGN KEY("course_id") REFERENCES "courses"("id")
     );


