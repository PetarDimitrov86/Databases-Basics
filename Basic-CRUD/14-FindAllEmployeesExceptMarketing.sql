SELECT E.FirstName, E.LastName FROM [dbo].Employees AS E
WHERE E.DepartmentId != 4 --or <> 4
