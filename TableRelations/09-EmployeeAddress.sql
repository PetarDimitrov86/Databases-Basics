SELECT TOP 5 e.EmployeeID, e.JobTitle, e.AddressID, a.AddressText FROM [dbo].Employees AS e
INNER JOIN Addresses as a
ON e.AddressID = a.AddressID
ORDER BY e.AddressID ASC