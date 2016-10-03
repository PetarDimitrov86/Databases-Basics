SELECT E.FirstName, E.LastName FROM [dbo].[Employees] AS E
WHERE CHARINDEX('ei', E.LastName) <> 0