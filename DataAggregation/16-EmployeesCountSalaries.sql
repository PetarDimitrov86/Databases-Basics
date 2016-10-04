SELECT COUNT(e.Salary) AS "Count" FROM [dbo].[Employees] AS e
WHERE e.ManagerID IS NULL