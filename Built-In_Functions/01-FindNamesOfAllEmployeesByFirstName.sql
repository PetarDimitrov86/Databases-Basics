SELECT E.FirstName, E.LastName FROM [dbo].[Employees] AS E
WHERE LEFT(E.FirstName, 2) = 'Sa'