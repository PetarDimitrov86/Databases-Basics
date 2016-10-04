SELECT * INTO [dbo].TempTable
FROM [dbo].Employees AS e
WHERE e.Salary > 30000

DELETE FROM [dbo].TempTable
WHERE [dbo].TempTable.ManagerID = 42

UPDATE [dbo].TempTable
SET [dbo].TempTable.Salary += 5000
WHERE [dbo].TempTable.DepartmentID = 1

SELECT e.DepartmentID, AVG(e.Salary) FROM [dbo].TempTable AS e
GROUP BY e.DepartmentID