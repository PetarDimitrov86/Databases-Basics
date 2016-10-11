SELECT DISTINCT sal.DepartmentID, sal.Salary FROM
(SELECT e.DepartmentID, e.Salary, DENSE_RANK() OVER (PARTITION BY e.DepartmentID ORDER BY e.Salary DESC) AS SalaryRank
FROM [dbo].[Employees] AS e) AS sal
WHERE sal.SalaryRank = 3