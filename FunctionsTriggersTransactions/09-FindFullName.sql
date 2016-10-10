CREATE PROCEDURE usp_GetHoldersFullName AS
BEGIN
	SELECT ah.FirstName + ' ' + ah.LastName FROM dbo.AccountHolders AS ah
END

--CREATE TABLE AccountHolders(
--ID INT PRIMARY KEY IDENTITY,
--FirstName VARCHAR(50),
--LastName VARCHAR(50),
--SSN VARCHAR(50)
--)

--CREATE TABLE Accounts(
--Id INT PRIMARY KEY IDENTITY,
--Balance MONEY,
--AccountHolderId INT, CONSTRAINT FK_Accounts_AccountHolders FOREIGN KEY (Id) REFERENCES AccountHolders(Id)
--)

--INSERT INTO AccountHolders (FirstName, LastName)
--VALUES
--('Petar', 'Dimitrov'),
--('Nikolay', 'Petkov'),
--('Lidinka', 'Plamenova'),
--('Svetoslav', 'Dimitrov'),
--('Alexander', 'Krustev')