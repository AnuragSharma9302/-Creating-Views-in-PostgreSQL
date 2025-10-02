# 📘 Creating-Views-in-PostgreSQL

## 🎯 Objective

Learn how to create and use views in SQL for data abstraction, simplification, and security.


## 🛠️ Tools Used

PostgreSQL – Database engine

DB Browser for SQLite / MySQL Workbench – (for testing queries)

dbdiagram.io – For ER Diagram.

## 🚀 What I Did

Designed the schema with Employees, Departments, and Salaries tables.

Inserted sample data into each table.

Created views to simplify complex queries (like joining Employees with Departments, or checking latest salaries).

Tested queries using SELECT from views.

Generated an ER Diagram to visualize relationships.

## 📝 Clauses Used

CREATE VIEW → Creates a virtual table based on a query.

SELECT → Extracts data from a table or view.

JOIN → Combines rows from multiple tables based on related columns.

WHERE → Filters records based on conditions.

ORDER BY → Sorts results in ascending/descending order.

GROUP BY → Groups rows sharing a property for aggregation.

## 📌 What These Views Cover

1.Basic selection (EmployeeInfo)

2.Join with another table (EmployeeDepartment)

3.Filtering with WHERE (HighSalaryEmployees)

4.Aggregation with GROUP BY (DepartmentEmployeeCount, DepartmentAverageSalary)

5.Correlated subquery inside a view (LatestSalaries)

6.History tracking (EmployeeSalaryHistory)

7.Ranking / LIMIT (TopPaidEmployees)

## 🔑 Outcome

Learned how views provide reusable query logic.

Understood how views improve security by limiting column access.

Simplified complex joins into easy-to-use queries.

Practiced creating and querying views in PostgreSQL.
