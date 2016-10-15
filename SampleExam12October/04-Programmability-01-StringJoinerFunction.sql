CREATE FUNCTION udf_ConcatString (@FirstString VARCHAR(MAX), @SECONDSTRING VARCHAR(MAX)) 
RETURNS VARCHAR(MAX)
AS
BEGIN
	DECLARE @Result VARCHAR(MAX)
	SET @Result = CONCAT(REVERSE(@FirstString), REVERSE(@SecondString))
	RETURN @Result
END

--SELECT dbo.udf_ConcatString ('Soft', 'Uni')