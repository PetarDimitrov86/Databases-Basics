SELECT DISTINCT TOP 3 e.EmployeeID, e.FirstName FROM Employees AS e
WHERE  e.EmployeeID NOT IN
	(SELECT ep.EmployeeID FROM EmployeesProjects AS ep)
	
-- Second version using LEFT OUTER JOIN
SELECT TOP 3 e.EmployeeID, e.FirstName FROM Employees AS e
   LEFT OUTER JOIN EmployeesProjects AS ep
   ON e.EmployeeID = ep.EmployeeID
   WHERE ep.EmployeeID IS NULL
