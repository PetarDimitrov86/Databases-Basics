SELECT E.FirstName, E.LastName, E.Salary FROM [dbo].Employees AS E
WHERE E.Salary >= 50000
ORDER BY E.Salary DESC