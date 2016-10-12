UPDATE Employees
SET ManagerID = 1
WHERE EmployeeID BETWEEN 2 AND 10

UPDATE Employees
SET ManagerID = 11
WHERE EmployeeID BETWEEN 12 AND 20

UPDATE Employees
SET ManagerID = 21
WHERE EmployeeID BETWEEN 22 AND 30

UPDATE Employees
SET ManagerID = 1
WHERE EmployeeID IN (11, 21) 