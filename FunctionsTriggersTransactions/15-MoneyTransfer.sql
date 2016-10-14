CREATE PROCEDURE usp_MoneyTransfer (@SenderAccountID INT,  @ReceiverAccountID INT, @MoneyAmmount DECIMAL(19, 8)) AS
BEGIN
	BEGIN TRAN
	IF (@SenderAccountID NOT IN (SELECT a.Id FROM Accounts AS a))
	BEGIN
		RAISERROR('Invalid Sender Account ID Number', 16, 1)
		ROLLBACK
	END
	ELSE IF (@ReceiverAccountID NOT IN (SELECT a.Id FROM Accounts AS a))
	BEGIN
		RAISERROR('Invalid Receiver Account ID Number', 16, 1)
		ROLLBACK
	END
	ELSE IF (@MoneyAmmount <= 0)
	BEGIN
		RAISERROR('Cannot transfer negative ammount of money', 16, 1)
		ROLLBACK
	END
	ELSE IF (SELECT a.Balance FROM Accounts AS a WHERE a.Id = @SenderAccountID) < @MoneyAmmount
	BEGIN
		RAISERROR('Sender cannot be left with a negative ammount of money', 16, 1)
		ROLLBACK
	END
	ELSE
	BEGIN
		UPDATE Accounts
		SET Balance += @MoneyAmmount
		WHERE Id = @ReceiverAccountID
	
		UPDATE Accounts
		SET Balance -= @MoneyAmmount
		WHERE Id = @SenderAccountID	

		COMMIT
	END
END

--EXEC usp_MoneyTransfer 1, 2, 80
--EXEC usp_MoneyTransfer 1, 2, -80
--EXEC usp_MoneyTransfer 5, 2, -80
--EXEC usp_MoneyTransfer 1, 6, -80