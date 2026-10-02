DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;

CREATE TABLE Department (
    Dept_ID INT,
    Dept_Name VARCHAR(30)
);

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Dept_ID INT,
    Salary INT
);

INSERT INTO Employee VALUES
(101, 'Diganth', 1, 40000),
(102, 'Krishna', 2, 35000),
(103, 'Sushanth', 1, 50000),
(104, 'Deepak', 3, 45000),
(105, 'Chiranth', 2, 30000);

SELECT * FROM Employee;

SELECT * FROM Department;

SELECT Employee.Emp_Name, Department.Dept_Name
FROM Employee
INNER JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

SELECT Employee.Emp_Name, Department.Dept_Name
FROM Employee
LEFT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

SELECT Employee.Emp_Name, Department.Dept_Name
FROM Employee
RIGHT JOIN Department
ON Employee.Dept_ID = Department.Dept_ID;

SELECT Employee.Emp_Name, Department.Dept_Name
FROM Employee
NATURAL JOIN Department;