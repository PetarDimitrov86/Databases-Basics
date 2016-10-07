SELECT DISTINCT TOP 3 e.EmployeeID, e.FirstName FROM Employees AS e
WHERE  e.EmployeeID NOT IN
	(SELECT ep.EmployeeID FROM EmployeesProjects AS ep)