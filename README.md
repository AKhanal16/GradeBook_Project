# GradeBook

# This repo contains the project work for the Database Systems course

## Instructions:

Install a Database Management System (DBMS): Begin by installing a suitable DBMS like MySQL or PostgreSQL on your computer. You can find installation instructions on the official websites of these systems.

## Open the DBMS Client and Connect to the Database:
Open your preferred DBMS client application.
Connect to the database you just installed. If you haven't created a database yet, follow the client's instructions to create one.

## Upload "gradebook_project.sql" to Your Editor:
If you haven't already, download the "gradebook_project.sql" file provided.
Open the file using a text editor of your choice or directly upload it to your DBMS client.

## Execute the SQL Code:
Copy the contents of "code.sql" from your editor.
Paste the SQL code into the query editor of your DBMS client.
Run the entire code to create the necessary tables and insert the values into the database.

## Verify Execution:
Once the code has been executed successfully, you'll see confirmation messages in the client indicating table creation and data insertion.

## Query the Database:
With the tables and data now in place, you can perform various tasks such as querying the database to retrieve information or execute additional SQL commands as needed.

By following these steps, you'll set up your database environment and execute the provided SQL code smoothly.

# Problem Statement
You are asked to implement a grade book to keep track student grades for several couses that a professor teaches. Courses should have the information of department, course number, course name, semester, and year.  For each course, the grade is caculated on various categories, including course participations, homework, tests, projects, etc.  The total percentages of the categories should add to 100% and the total perfect grade should be 100. The number of assignments from each category is unspecified, and can change at any time.  For example, a course may be graded by the distribution: 10% participation, 20% homework, 50% tests, 20% projects. Please note that if there are 5 homework, each homework is worth 20%/5=4% of the grade.

# Tasks
Design the ER diagram;
Write the commands for creating tables and inserting values;
Show the tables with the contents that you have inserted;
Compute the average/highest/lowest score of an assignment;
List all of the students in a given course;
List all of the students in a course and all of their scores on every assignment;
Add an assignment to a course;
Change the percentages of the categories for a course;
Add 2 points to the score of each student on an assignment;
Add 2 points just to those students whose last name contains a ‘Q’.
Compute the grade for a student;
Compute the grade for a student, where the lowest score for a given category is dropped.