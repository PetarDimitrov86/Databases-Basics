SELECT T.Name FROM [dbo].[Towns] AS T
ORDER BY T.Name ASC
SELECT D.Name FROM [dbo].[Departments] AS D
ORDER BY D.Name ASC
SELECT E.FirstName, E.LastName, E.JobTitle, E.Salary FROM [dbo].[Employees] AS E
ORDER BY E.Salary DESC