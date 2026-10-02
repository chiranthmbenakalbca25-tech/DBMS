CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    Age INT
);

INSERT INTO Employee VALUES
(1, 'Diganth', 'IT', 40000, 22),
(2, 'Krishna', 'HR', 35000, 25),
(3, 'Sushanth', 'IT', 50000, 28),
(4, 'Deepak', 'Finance', 45000, 24),
(5, 'Chiranth', 'HR', 30000, 21);

SELECT * FROM Employee;

SELECT Emp_Name, Salary, Salary + 5000 AS New_Salary
FROM Employee;

SELECT Emp_Name, Salary, Salary - 5000 AS Salary_After_Deduction
FROM Employee;

SELECT Emp_Name, Salary, Salary * 12 AS Annual_Salary
FROM Employee;

SELECT Emp_Name, Salary, Salary / 12 AS Monthly_Salary
FROM Employee;

SELECT Emp_Name, Salary, Salary % 10000 AS Remainder
FROM Employee;

SELECT * FROM Employee
WHERE Salary = 40000;

SELECT * FROM Employee
WHERE Department <> 'IT';

SELECT * FROM Employee
WHERE Salary > 40000;

SELECT * FROM Employee
WHERE Salary < 40000;

SELECT * FROM Employee
WHERE Salary >= 40000;

SELECT * FROM Employee
WHERE Age <= 24;

SELECT * FROM Employee
WHERE Department = 'IT' AND Salary > 40000;

SELECT * FROM Employee
WHERE Department = 'IT' OR Department = 'HR';

SELECT * FROM Employee
WHERE NOT Department = 'HR';