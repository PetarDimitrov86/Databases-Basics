SELECT c.CityName, b.Name, COUNT(*) AS EmployeesCount FROM Cities AS c
INNER JOIN Branches AS b
ON b.CityID = c.CityID
AND c.CityID NOT IN (4, 5)
INNER JOIN Employees AS e
ON e.BranchID = b.BranchID
GROUP BY c.CityName, b.Name
HAVING  COUNT(*) >= 3