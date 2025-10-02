
-- 1. View: Basic Employee Info
CREATE VIEW EmployeeInfo AS
SELECT EmpID, Name, Salary
FROM Employees;

-- 2. View: Employees with Departments
CREATE VIEW EmployeeDepartment AS
SELECT e.EmpID, e.Name, d.DeptName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DeptID;

-- 3. View: Employees earning more than 70k
CREATE VIEW HighSalaryEmployees AS
SELECT Name, Salary
FROM Employees
WHERE Salary > 70000;

-- 4. View: Department-wise Employee Count
CREATE VIEW DepartmentEmployeeCount AS
SELECT d.DeptName, COUNT(e.EmpID) AS TotalEmployees
FROM Departments d
LEFT JOIN Employees e ON d.DeptID = e.DepartmentID
GROUP BY d.DeptName;

-- 5. View: Latest Salary per Employee (from Salaries table)
CREATE VIEW LatestSalaries AS
SELECT s.EmpID, e.Name, s.Amount, s.EffectiveDate
FROM Salaries s
JOIN Employees e ON s.EmpID = e.EmpID
WHERE s.EffectiveDate = (
    SELECT MAX(s2.EffectiveDate)
    FROM Salaries s2
    WHERE s2.EmpID = s.EmpID
);

-- 6. View: Employees with Salary History
CREATE VIEW EmployeeSalaryHistory AS
SELECT e.Name, s.Amount, s.EffectiveDate
FROM Employees e
JOIN Salaries s ON e.EmpID = s.EmpID
ORDER BY e.Name, s.EffectiveDate;

-- 7. View: Average Salary by Department
CREATE VIEW DepartmentAverageSalary AS
SELECT d.DeptName, AVG(e.Salary) AS AvgSalary
FROM Departments d
JOIN Employees e ON d.DeptID = e.DepartmentID
GROUP BY d.DeptName;

-- 8. View: Top 3 Highest Paid Employees
CREATE VIEW TopPaidEmployees AS
SELECT EmpID, Name, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3;
