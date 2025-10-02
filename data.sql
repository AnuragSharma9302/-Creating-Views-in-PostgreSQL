-- Insert Departments
INSERT INTO Departments (DeptName) 
VALUES ('HR'), ('IT'), ('Finance'), ('Sales');

-- Insert Employees
INSERT INTO Employees (Name, DepartmentID, HireDate, Salary) 
VALUES 
('Alice', 2, '2022-05-10', 70000),
('Bob', 2, '2021-03-15', 80000),
('Charlie', 1, '2023-01-20', 50000),
('Diana', 3, '2020-11-05', 90000),
('Evan', 4, '2024-02-01', 60000);

-- Insert Salaries (history)
INSERT INTO Salaries (EmpID, Amount, EffectiveDate) VALUES
(1, 65000, '2023-01-01'),
(1, 70000, '2024-01-01'),
(2, 75000, '2023-06-01'),
(2, 80000, '2024-01-01'),
(4, 85000, '2023-03-01'),
(4, 90000, '2024-01-01');
