CREATE TABLE Logs(
LogID INT PRIMARY KEY IDENTITY,
AccountID INT,
OldSum DECIMAL(19, 8),
NewSum DECIMAL(19, 8),
FOREIGN KEY(AccountID) REFERENCES Accounts(ID)
)

CREATE TRIGGER tr_SumAccountChange
ON Accounts
AFTER UPDATE
AS
BEGIN
	DECLARE @newBalance INT
	SET @newBalance = (SELECT deleted.Balance FROM deleted)
	INSERT INTO [dbo].[Logs] (AccountID, OldSum, NewSum)
	(SELECT inserted.Id,  @newBalance, inserted.Balance  FROM inserted
	INNER JOIN Accounts AS a
	ON inserted.Id = a.Id)
END

UPDATE Accounts
SET Balance += 20
WHERE Id = 1