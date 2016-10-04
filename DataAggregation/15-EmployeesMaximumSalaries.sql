SELECT e.DepartmentID, MAX(e.Salary) AS "MaxSalary" FROM [dbo].[Employees] AS e
GROUP BY e.DepartmentID
HAVING MAX(e.Salary) NOT BETWEEN 30000 AND 70000