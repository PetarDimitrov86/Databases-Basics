CREATE PROCEDURE usp_EmployeesBySalaryLevel  (@salaryLevel VARCHAR(50)) 
AS
BEGIN
	DECLARE @salaryFilter AS VARCHAR(50)
	SET @salaryFilter = @salaryLevel
	SELECT e.FirstName, e.LastName FROM [dbo].[Employees] AS e
	WHERE dbo.ufn_GetSalaryLevel(e.Salary) = @salaryFilter
END

--EXEC usp_EmployeesBySalaryLevel 'High'