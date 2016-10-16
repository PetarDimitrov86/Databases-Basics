CREATE TRIGGER TR_LogAccounts ON dbo.Accounts
INSTEAD OF DELETE
AS
BEGIN
	DELETE FROM EmployeesAccounts
	WHERE AccountID IN (SELECT d.AccountID FROM deleted AS d)
	INSERT INTO AccountLogs SELECT * FROM deleted
	DELETE dbo.Accounts
	WHERE AccountID IN (SELECT d.AccountID FROM deleted AS d)
END