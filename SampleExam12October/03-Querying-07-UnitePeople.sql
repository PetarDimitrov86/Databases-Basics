SELECT TOP 3 e.FirstName, c.CityName FROM Employees AS e
INNER JOIN Branches AS b
ON b.BranchID = e.BranchID
INNER JOIN Cities AS c
ON c.CityID = b.CityID

UNION ALL

SELECT TOP 3 c.FirstName, ci.CityName FROM Customers AS c
INNER JOIN Cities AS ci
ON c.CityID = ci.CityID