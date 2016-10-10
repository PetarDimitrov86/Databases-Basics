CREATE FUNCTION ufn_IsWordComprised(@setOfLetters VARCHAR(50), @word VARCHAR(50))
RETURNS BIT 
AS
BEGIN
	DECLARE @lettersSet AS VARCHAR(50)
	DECLARE @givenWord AS VARCHAR(50)
	DECLARE @result BIT

	SET @lettersSet = @setOfLetters
	SET @givenWord = @word
	SET @result = 1

	DECLARE @cnt INT = 0;
	WHILE @cnt < LEN(@givenWord)
	BEGIN
		DECLARE @innerCnt INT = 0;
		DECLARE @letterFound BIT = 0
		WHILE @innerCnt < LEN(@lettersSet)
		BEGIN
			IF SUBSTRING(@lettersSet, @innerCnt + 1, 1) = SUBSTRING(@givenWord, @cnt + 1, 1)
			BEGIN
				SET @letterFound = 1;
			END
			SET @innerCnt += 1
		END
		IF @letterFound = 0
		BEGIN
			SET @result = 0
		END
		SET @cnt += 1;
	END
	RETURN @result
END