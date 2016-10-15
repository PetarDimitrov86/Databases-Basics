SELECT TOP 5 c.CustomerID, l.Amount FROM Customers AS c
INNER JOIN Loans AS l
ON l.CustomerID = c.CustomerID
WHERE l.Amount > (SELECT AVG(l1.Amount) AS AverageLoan FROM Loans AS l1
				  INNER JOIN Customers AS c1
					 ON c1.CustomerID = l1.CustomerID
				  WHERE c1.Gender = 'M'
) 
ORDER BY c.LastName ASC