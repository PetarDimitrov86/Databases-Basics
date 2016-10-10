CREATE PROCEDURE usp_GetEmployeesSalaryAbove35000 AS
BEGIN
SELECT e.FirstName, e.LastName FROM [dbo].[Employees] AS e
WHERE e.Salary > 35000
END