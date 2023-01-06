-- PROBLEM 1: How many students are in the students table?
SELECT * FROM students; 
-- There are 1,000 students in the student table
-- PROBLEM 2: Which student(s) has the highest GPA in the table? 
SELECT first_name, last_name, gpa FROM students
ORDER BY gpa DESC;
-- Harwill Hawken and Neile Iwanowski have the higjest GPA at 4.0
-- PROBLEM 3: How many students are located in the state of Virginia? 
SELECT * from students 
WHERE state = "VA";
-- There are 35 students from Virginia
-- PROBLEM 4: How many students have a GPA that is greater than 3.5? 
SELECT * FROM students 
WHERE gpa > 3.5;
-- There are 179 students who have a GPA higher than 3.5
-- PROBLEM 5: How many students are NOT on the Honors List? 
SELECT * FROM students
WHERE honors_list = 0;
-- There are 505 students who are not on the Honors List.
-- PROBLEM 6: Two students have the email domain “narod.ru”. What are the names of those students? 
SELECT first_name, last_name, email FROM students
WHERE email LIKE "%narod.ru%";
-- Jacintha Upfold and Becka Verbrugghen have the domain "narod.ru".
-- PROBLEM 7: How many students have a GPA between 2.0 and 3.0? (inclusive) 
SELECT * FROM students
WHERE gpa > 2.0 AND gpa < 3.0;
-- There are 327 students with a GPA between 2.0 and 3.0.
-- PROBLEM 8: What is the average GPA of all students in the students table? 
SELECT AVG(gpa) from students;
-- The average GPA of all students is 2.485060 or 2.49
-- PROBLEM 9: What is the average GPA of all students in the state of California? 
SELECT AVG(gpa) from students
WHERE state = "CA";
-- The average GPA of students from California is 2.611250 or 2.61.
-- PROBLEM 10: Which student has the lowest GPA of all students with an address that contains the word “Street”?
SELECT first_name, last_name, address, gpa FROM students
WHERE address LIKE "%street%"
ORDER BY gpa ASC;
-- Gwyneth Decaze has the lowest GPA of any student with the word "Street in the address.


