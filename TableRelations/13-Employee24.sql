SELECT e.EmployeeID, e.FirstName, p.Name AS "ProjectName" FROM Employees AS e
INNER JOIN EmployeesProjects AS ep
ON e.EmployeeID = ep.EmployeeID
LEFT JOIN Projects AS p
ON p.ProjectID = ep.ProjectID
AND p.StartDate < '2005-01-01'
WHERE e.EmployeeID = 24