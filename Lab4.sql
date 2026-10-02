CREATE TABLE Employee (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Salary DECIMAL(10,2),
    Joining_Date DATE
);

INSERT INTO Employee VALUES
(53, 'Krishna', 35000.50, '2023-01-15'),
(29, 'Diganth', 42000.75, '2022-06-20'),
(30, 'Sushanth', 28000.25, '2024-03-10'),
(27, 'Deepak', 50000.00, '2021-11-05');

SELECT * FROM Employee;

SELECT Emp_Name, Salary, CAST(Salary AS CHAR)
FROM Employee;

SELECT Emp_Name, Salary, CAST(Salary AS SIGNED)
FROM Employee;

SELECT Emp_Name, Joining_Date, CAST(Joining_Date AS CHAR)
FROM Employee;

SELECT CURDATE();

SELECT NOW();

SELECT Emp_Name, Joining_Date, YEAR(Joining_Date)
FROM Employee;

SELECT Emp_Name, Joining_Date, MONTH(Joining_Date)
FROM Employee;

SELECT Emp_Name, Joining_Date, DAY(Joining_Date)
FROM Employee;

SELECT Emp_Name, Joining_Date,
       DATE_ADD(Joining_Date, INTERVAL 1 YEAR)
FROM Employee;

SELECT Emp_Name, Joining_Date,
       DATE_ADD(Joining_Date, INTERVAL 30 DAY)
FROM Employee;

SELECT Emp_Name, Joining_Date,
       DATEDIFF(CURDATE(), Joining_Date)
FROM Employee;

SELECT Emp_Name, Joining_Date,
       DATE_FORMAT(Joining_Date, '%d-%m-%Y')
FROM Employee;