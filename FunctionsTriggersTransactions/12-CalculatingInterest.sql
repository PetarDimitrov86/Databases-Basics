CREATE PROCEDURE usp_CalculateFutureValueForAccount (@AccountID INT, @InterestRate DECIMAL(19, 8))
AS
BEGIN
	SELECT a.Id, ah.FirstName, ah.LastName, a.Balance, 
	dbo.ufn_CalculateFutureValue (a.Balance, @InterestRate, 5) AS "Balance In 5 Years"
	FROM [dbo].[Accounts] AS a
	INNER JOIN [dbo].[AccountHolders] AS ah
	ON a.AccountHolderId = ah.ID
	WHERE a.Id = @AccountID
END

--EXEC usp_CalculateFutureValueForAccount 1, 0.1