SELECT * FROM [dbo].[Towns]
ORDER BY [dbo].[Towns].Name ASC
SELECT * FROM [dbo].[Departments]
ORDER BY [dbo].[Departments].Name ASC
SELECT * FROM [dbo].[Employees]
ORDER BY [dbo].[Employees].Salary DESC

--This version also works by shortening the table name

SELECT * FROM [dbo].[Towns] AS T
ORDER BY T.Name ASC
SELECT * FROM [dbo].[Departments] AS D
ORDER BY D.Name ASC
SELECT * FROM [dbo].[Employees] AS E
ORDER BY E.Salary DESC
