SELECT TOP 5 e.EmployeeID, e.FirstName, a.AccountNumber FROM Employees AS e
INNER JOIN EmployeesAccounts AS ea
ON ea.EmployeeID = e.EmployeeID
INNER JOIN Accounts AS a
ON ea.AccountID = a.AccountID
WHERE a.StartDate >= '2012-01-01'
ORDER BY e.FirstName DESC