UPDATE [dbo].[Employees]
SET Salary = Salary + (10 * Salary) / 100

SELECT E.Salary FROM [dbo].Employees AS E