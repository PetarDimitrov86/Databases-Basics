CREATE TABLE NotificationEmails(
Id INT PRIMARY KEY IDENTITY,
Recipient INT,
Subject VARCHAR(100),
Body VARCHAR(100)
)

CREATE TRIGGER tr_notificationEmail
ON Logs
AFTER INSERT
AS
BEGIN
	INSERT INTO NotificationEmails (Recipient, Subject, Body)
	SELECT TOP 1 l.AccountID, 
		   CONCAT('Balance change for account: ', l.AccountID),
		   CONCAT('On ', GETDATE(), ' your balance was change from ', l.OldSum, ' to ', l. NewSum, '.')
		   FROM Logs AS l
		   ORDER BY l.LogID DESC
END

UPDATE Accounts
SET Balance += 20
WHERE Id = 1