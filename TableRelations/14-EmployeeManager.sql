SELECT e.EmployeeID, e.FirstName, e.ManagerID, eJ.FirstName AS "ManagerName" FROM [dbo].[Employees] AS e
INNER JOIN Employees AS eJ
ON e.ManagerID = eJ.EmployeeID
WHERE e.ManagerID IN (3, 7)
ORDER BY e.EmployeeID ASC