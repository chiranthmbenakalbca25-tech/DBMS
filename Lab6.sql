
CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    Age INT
);

INSERT INTO Employee VALUES
(101, 'Diganth', 'IT', 40000, 21),
(102, 'Krishna', 'HR', 35000, 25),
(103, 'Sushanth', 'IT', 50000, 28),
(104, 'Deepak', 'Finance', 45000, 24),
(105, 'Chiranth', 'HR', 30000, 21);

SELECT * FROM Employee;

SELECT *
FROM Employee
WHERE Department IN ('IT', 'HR');

SELECT *
FROM Employee
WHERE Department NOT IN ('IT', 'HR');

SELECT *
FROM Employee
WHERE Salary BETWEEN 35000 AND 45000;

SELECT *
FROM Employee
WHERE Salary NOT BETWEEN 35000 AND 45000;

SELECT *
FROM Employee
WHERE Emp_Name LIKE 'D%';

SELECT *
FROM Employee
WHERE Emp_Name LIKE '%n';


SELECT Emp_ID, Emp_Name, Department
FROM Employee
WHERE Department = 'IT'

UNION

SELECT Emp_ID, Emp_Name, Department
FROM Employee
WHERE Department = 'HR';