SELECT TOP 10 e.FirstName, e.LastName, e.DepartmentID FROM [dbo].[Employees] AS e
JOIN 
(SELECT em2.DepartmentID, AVG(em2.Salary) AS AverageSalary FROM [dbo].[Employees] AS em2
GROUP BY em2.DepartmentID) AS eSub
ON e.DepartmentID = eSub.DepartmentID
WHERE eSub.AverageSalary < e.Salary
ORDER BY DepartmentID