CREATE PROCEDURE usp_DepositMoney (@AccountID INT, @MoneyAmmount DECIMAL(19, 8)) AS
BEGIN
	UPDATE Accounts
	SET Balance += @MoneyAmmount
	WHERE Id = @AccountID
END