UPDATE Employees
SET Salary = Salary + (12 * Salary) / 100
WHERE DepartmentId = 1 OR DepartmentId = 2 OR DepartmentId = 4 OR DepartmentId = 11

SELECT E.Salary
FROM dbo.Employees AS E

--Second version using decimal for calculations and IN instead of OR, OR, OR, OR
UPDATE Employees
SET Salary = Salary * 1.12
WHERE DepartmentId IN (1, 2, 4, 11)

SELECT E.Salary
FROM dbo.Employees AS E
