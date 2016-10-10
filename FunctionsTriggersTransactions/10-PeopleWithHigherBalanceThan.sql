CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@number MONEY) AS
BEGIN
	DECLARE @desiredSumOfMoney MONEY
	SET @desiredSumOfMoney = @number
	SELECT ah.FirstName, ah.LastName FROM dbo.AccountHolders AS ah
	INNER JOIN dbo.Accounts AS a
	ON ah.Id = a.AccountHolderId
	GROUP BY ah.FirstName, ah.LastName
	HAVING SUM(a.Balance) > @desiredSumOfMoney
END