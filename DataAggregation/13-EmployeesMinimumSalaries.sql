SELECT e.DepartmentID, MIN(e.Salary) FROM [dbo].Employees AS e
WHERE e.HireDate > '2000-01-01'
GROUP BY e.DepartmentID
HAVING e.DepartmentID IN (2, 5, 7)