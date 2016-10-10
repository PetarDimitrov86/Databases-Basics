CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber (@Salary MONEY) AS
BEGIN
	DECLARE @givenNumber AS MONEY
	SET @givenNumber = @Salary
SELECT e.FirstName, e.LastName FROM [dbo].[Employees] AS e
WHERE e.Salary >= @givenNumber
END