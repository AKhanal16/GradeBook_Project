CREATE DATABASE gradebook_project;


-- -------------------------------------------------------
/*
Table to store Courses Details
*/

CREATE TABLE Courses(
    course_number INT,
    course_name VARCHAR(50) NOT NULL,
    semester VARCHAR(15) NOT NULL,
    course_year YEAR NOT NULL,
    PRIMARY KEY (course_number)
);

SELECT *
FROM Courses;


-- -------------------------------------------------------
/*
Table to store Students details
*/

CREATE TABLE Students(
    student_id INT,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    date_of_birth DATE NOT NULL,
    PRIMARY KEY (student_id)
);

SELECT *
FROM Students;

-- -------------------------------------------------------

/*
Table to store the Assigment Details
*/

CREATE TABLE Assignments(
    assignment_id INT AUTO_INCREMENT,
    course_number INT,
    category_name VARCHAR(50) NOT NULL,
    assignment_name VARCHAR(40),
    percentage DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (assignment_id),
    FOREIGN KEY (course_number) REFERENCES Courses(course_number)
);

SELECT *
FROM Assignments;

-- -------------------------------------------------------

/*
Table to store Course grades
*/

CREATE TABLE Grades(
    grade_id INT AUTO_INCREMENT,
    student_id INT,
    assignment_id INT,
    grade DECIMAL(5,2),
    PRIMARY KEY (grade_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id)
);


SELECT *
FROM Grades;

-- -------------------------------------------------------

/*
Insert values into the Courses Table
*/


INSERT INTO Courses VALUES(1, 'Physics I', 'Fall', 2024);
INSERT INTO Courses VALUES(2, 'Physics II', 'Fall', 2024);
INSERT INTO Courses VALUES(3, 'Chemistry I', 'Spring', 2024);
INSERT INTO Courses VALUES(4, 'Chemistry II', 'Spring', 2024);
INSERT INTO Courses VALUES(5, 'Algorithms', 'Fall', 2024);
INSERT INTO Courses VALUES(6, 'Operating Systems', 'Fall', 2024);
INSERT INTO Courses VALUES(7, 'Linear Algebra', 'Spring', 2024);
INSERT INTO Courses VALUES(8, 'Discrete Maths', 'Fall', 2024);
INSERT INTO Courses VALUES(9, 'Biology', 'Fall', 2024);
INSERT INTO Courses VALUES(10, 'Database Systems', 'Spring', 2024);

SELECT *
FROM Courses;



-- -------------------------------------------------------

/*
Insert values into the Students Table
*/


INSERT INTO Students Values(0001, 'AB', 'De Villiers', '2003-04-25');
INSERT INTO Students Values(0002, 'David', 'Miller', '1964-12-12');
INSERT INTO Students Values(0003, 'Moses', 'Henriques', '1993-08-08');
INSERT INTO Students Values(0004, 'Paras', 'Khadka', '1963-01-17');
INSERT INTO Students Values(0005, 'Rohit', 'Sharma', '2013-09-01');
INSERT INTO Students Values(0006, 'David', 'Warner', '2005-12-03');
INSERT INTO Students Values(0007, 'Babar', 'Azam', '1975-11-23');
INSERT INTO Students Values(0008, 'Virat', 'Kohli', '1945-04-08');
INSERT INTO Students Values(0009, 'Liam', 'Livingstone', '1999-06-27');
INSERT INTO Students Values(0010, 'Joe', 'Root', '1994-10-15');


SELECT *
FROM Students;


-- -------------------------------------------------------

/*
Insert values into the AssignmentCategories Table
*/


INSERT INTO Assignments(course_number, category_name, assignment_name, percentage)
VALUES (1, 'Participation', 'Class Participation', 10.00),
       (1, 'Midterm', 'Midterm1', 20.00),
       (1, 'Project', 'Project 1', 10.00),
       (1, 'Project', 'Project 2', 10.00),
       (1, 'Homework','HW1', 10.00),
       (1, 'Homework','HW2', 10.00),
       (1, 'Final', 'Semester Final', 30.00 ),
       (2, 'Participation', 'Class Participation', 5.00),
       (2, 'Midterm', 'Midterm', 15.00),
       (2, 'Project', 'Project', 35.00),
       (2, 'Homework', 'HW1', 15.00),
       (2, 'Final', 'Semester Final', 30.00),
       (3, 'Participation', 'Class Participation', 5.00),
       (3, 'Midterm', 'Midterm', 20.00),
       (3, 'Project', 'Project 1', 10.00),
       (3, 'Project', 'Project 2', 10.00),
       (3, 'Project', 'Project 3', 10.00),
       (3, 'Homework', 'HW1', 15.00),
       (3, 'Final', 'Semester Final', 30.00);

SELECT *
FROM Assignments;

-- -------------------------------------------------------

/*
Insert values into the Grades Table
*/

INSERT INTO Grades (student_id, assignment_id, grade) 
VALUES (0001, 1, 9),
       (0001, 2, 17),
       (0001, 3, 10),
       (0001, 4, 8),
       (0001, 5, 10),
       (0001, 6, 9),
       (0001, 7, 28),
       (0001, 8, 5),
       (0001, 9, 14),
       (0001, 10, 34),
       (0001, 11, 8),
       (0001, 12, 25),  
       (0002, 1, 9),
       (0002, 2, 20),
       (0002, 3, 10),
       (0002, 4, 10),
       (0002, 5, 9),
       (0002, 6, 9),
       (0002, 7, 29),
       (0003, 8, 5),
       (0003, 9, 10),
       (0003, 10, 33),
       (0003, 11, 4),
       (0003, 12, 27),    
       (0003, 1, 7),
       (0003, 2, 19),
       (0003, 3, 8),
       (0003, 4, 8),
       (0003, 5, 6),
       (0003, 6, 7),
       (0003, 7, 25);


SELECT *
From Grades;

-- -------------------------------------------------------

DROP TABLE Grades;

DROP TABLE Assignments;

DROP TABLE Students;

DROP TABLE Courses;

DROP DATABASE gradebook_project;


-- -------------------------------------------------------
/*
Task 3: Show the tables with the contents that you have inserted
*/

-- Show the contents of Courses Table

SELECT *
FROM Courses;

-- Show the contents of Students Table

SELECT *
FROM Students;

-- Show the contents of Assignments Table

SELECT *
FROM Assignments;

-- Show the contents of Course_grades Table

SELECT *
FROM Grades;

-- -------------------------------------------------------

/*
Task 4: Compute the average/highest/lowest score of an assignment
*/

SELECT AVG(grade) AS average_score
FROM Grades
WHERE assignment_id = 7;


SELECT MAX(grade) AS highest_grade
FROM Grades
WHERE assignment_id = 7;


SELECT MIN(grade) AS lowest_grade
FROM Grades
WHERE assignment_id = 7;

-- -------------------------------------------------------

/*
Task 5: List all the students in a given course
*/


SELECT DISTINCT Students.student_id, Students.first_name, Students.last_name
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
JOIN Assignments ON Grades.assignment_id = Assignments.assignment_id
JOIN Courses ON Assignments.course_number = Courses.course_number
WHERE Courses.course_number = 2
ORDER BY Students.student_id;


-- -------------------------------------------------------

/*
Task 6: List all of the students in a course and all of their scores on every assignment;
*/
SELECT Students.student_id, Students.first_name, Students.last_name, 
    Assignments.assignment_name, Grades.grade
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
JOIN Assignments ON Grades.assignment_id = Assignments.assignment_id
JOIN Courses ON Assignments.course_number = Courses.course_number
WHERE Courses.course_number = 2
ORDER BY Students.student_id;




-- -------------------------------------------------------
/*
Task 7: Add an assignment to a course
*/

SELECT *
FROM Assignments;

INSERT INTO Assignments(course_number, category_name, assignment_name, percentage) VALUES(103, 'Finals', 'Comprehensive Final', 30.00);

-- -------------------------------------------------------

/*
Task 8: Change the percentages of the categories for a course;
*/


UPDATE Assignments
SET percentage = 
    CASE
        WHEN course_number = 1 AND category_name = 'Participation' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Midterm' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Project' AND assignment_name = 'Project 1' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Project' AND assignment_name = 'Project 2' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Homework' AND assignment_name = 'HW1' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Homework' AND assignment_name = 'HW2' THEN 15.00
        WHEN course_number = 1 AND category_name = 'Final' AND assignment_name = 'Semester Final' THEN 10.00
        ELSE percentage
    END
WHERE course_number = 1;

SELECT *
FROM Assignments;

-- -------------------------------------------------------

/*
Task 9: Add 2 points to the score of each student on an assignment;
*/

UPDATE Grades
SET grade = grade + 2
WHERE assignment_id = 5;

SELECT *
FROM Grades;

-- -------------------------------------------------------

/*
Task 10: Add 2 points just to those students whose last name contains a 'Q'.
*/

UPDATE Grades
SET grade = grade + 2
WHERE assignment_id = 10
AND student_id IN (
  SELECT student_id FROM Students
  WHERE last_name LIKE '%Q%'
      OR last_name LIKE '%q%'
);

SELECT *
FROM Grades;

-- -------------------------------------------------------

/*
Task 11: Compute the grade for a student;
*/
SELECT
    Students.student_id,
    Students.first_name AS student_first_name,
    Students.last_name AS student_last_name,
    Assignments.course_number,
    SUM(Grades.grade) AS overall_grade
FROM
    Students
JOIN
    Grades ON Students.student_id = Grades.student_id
JOIN
    Assignments ON Grades.assignment_id = Assignments.assignment_id
JOIN
    Courses ON Assignments.course_number = Courses.course_number
WHERE 
    Students.student_id = 3
GROUP BY
    Students.student_id,
    Students.first_name,
    Students.last_name,
    Assignments.course_number;


/*
Tasl 12: Compute the grade for a student, where the lowest score for a given category is dropped.
*/


SELECT
    student_id,
    course_number,
    ROUND(SUM(readjusted_values) / SUM(total_weight) * 100, 2) AS overall_grade
FROM (
    SELECT
        Students.student_id,
        Assignments.course_number,
        Assignments.category_name,
        COUNT(Grades.grade) AS num_assignments,
        SUM(Assignments.percentage) AS total_weight,
        SUM(Grades.grade) AS total_grade,
        CASE
            WHEN Assignments.category_name = 'Project' AND COUNT(Grades.grade) > 1 THEN ((SUM(Grades.grade) - min_grades.min_grade) / ((SUM(Assignments.percentage) - (SUM(Assignments.percentage)/COUNT(Grades.grade))))) * SUM(Assignments.percentage)
            ELSE SUM(Grades.grade)
        END AS readjusted_values
    FROM
        Assignments
    JOIN
        Grades ON Assignments.assignment_id = Grades.assignment_id
    JOIN
        Students ON Grades.student_id = Students.student_id
    JOIN
        (
            SELECT
                category_name,
                MIN(Grades.grade) AS min_grade
            FROM
                Assignments
            JOIN
                Grades ON Assignments.assignment_id = Grades.assignment_id
            GROUP BY
                category_name
        ) AS min_grades ON Assignments.category_name = min_grades.category_name
    WHERE
        Students.student_id = 1
    GROUP BY
        Students.student_id,
        Assignments.course_number,
        Assignments.category_name
) AS subquery
GROUP BY
    student_id,
    course_number;
