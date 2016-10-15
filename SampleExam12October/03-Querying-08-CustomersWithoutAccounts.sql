SELECT c.CustomerID, c.Height FROM Accounts AS a
RIGHT OUTER JOIN Customers AS c
ON c.CustomerID = a.CustomerID
WHERE a.AccountID IS NULL
AND c.Height BETWEEN 1.74 and 2.04