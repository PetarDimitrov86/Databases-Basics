CREATE FUNCTION ufn_GetSalaryLevel (@salary MONEY) 
RETURNS VARCHAR(50) AS
BEGIN
	DECLARE @employeeSalary AS MONEY
	SET @employeeSalary = @salary
	DECLARE @salaryLevel VARCHAR(50)

	IF (@salary < 30000)
	BEGIN
		SET @salaryLevel = 'Low'
	END

	IF (@salary >= 30000 AND @salary <= 50000)
	BEGIN
		SET @salaryLevel = 'Average'
	END

	IF (@salary > 50000)
	BEGIN
		SET @salaryLevel = 'High'
	END
RETURN @salaryLevel
END

--SELECT e.Salary
--      ,dbo.ufn_GetSalaryLevel(e.Salary)
--    AS "Salary Level"
--  FROM [SoftUni].[dbo].[Employees] as e