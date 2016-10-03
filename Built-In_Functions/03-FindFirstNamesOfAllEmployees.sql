SELECT E.FirstName FROM [dbo].[Employees] AS E
WHERE E.DepartmentID IN (3, 10) AND (E.HireDate BETWEEN '1995-01-01' AND '2005-12-31')