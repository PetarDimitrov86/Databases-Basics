SELECT TOP 1 c.CustomerID, c.FirstName, a.StartDate FROM Customers AS c
INNER JOIN Accounts AS a
ON a.CustomerID = c.CustomerID
ORDER BY a.StartDate ASC