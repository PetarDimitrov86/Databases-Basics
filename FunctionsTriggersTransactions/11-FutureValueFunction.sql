CREATE FUNCTION ufn_CalculateFutureValue (@InitialSum DECIMAL(19, 8), @YearlyInterestRate DECIMAL(19, 8), @Years INT) RETURNS DECIMAL(19, 4) AS
BEGIN
	DECLARE @result DECIMAL(19, 4)
	SET @result = @InitialSum * (POWER ((1 + @YearlyInterestRate), @Years))	
	RETURN @result
END

--SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)