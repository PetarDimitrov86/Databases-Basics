SELECT TOP 1 c.CustomerID, c.FirstName, a.StartDate FROM Customers AS c
INNER JOIN Accounts AS a
ON a.CustomerID = c.CustomerID
ORDER BY a.StartDate ASC

--Second version with Subquery
SELECT c.CustomerID, c.FirstName, a.StartDate FROM Customers AS c
INNER JOIN Accounts AS a
ON a.CustomerID = c.CustomerID
WHERE a.StartDate IN (SELECT MIN(a.StartDate) FROM Accounts AS a) 
