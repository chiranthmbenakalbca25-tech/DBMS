DROP TABLE IF EXISTS Student;

CREATE TABLE Student (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Course VARCHAR(30),
    Marks INT
);

INSERT INTO Student VALUES
(101, 'Diganth', 'BCA', 85),
(102, 'Krishna', 'BBA', 72),
(103, 'Sushanth', 'BCA', 91),
(104, 'Deepak', 'BBA', 68),
(105, 'Chiranth', 'BCA', 78);

SELECT * FROM Student;

SELECT Course, COUNT(*) AS Student_Count
FROM Student
GROUP BY Course;

SELECT Course, SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Course;

SELECT Course, AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Course;

SELECT Course, COUNT(*) AS Student_Count
FROM Student
GROUP BY Course
HAVING COUNT(*) > 1;

SELECT Course, AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Course
HAVING AVG(Marks) > 75;

SELECT Student_Name, Course, Marks
FROM Student
ORDER BY Marks ASC;

SELECT Student_Name, Course, Marks
FROM Student
ORDER BY Marks DESC;

SELECT Student_Name, Course, Marks
FROM Student
ORDER BY Course ASC, Marks DESC;