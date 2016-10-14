--SELECT * FROM Users AS u
--INNER JOIN UsersGames AS ug
--ON ug.UserId = u.Id
--INNER JOIN Games AS g
--on ug.GameId = g.Id
--WHERE u.FirstName = 'Stamat' AND g.Name = 'Safflower'

--CREATE TABLE ResultTable (ItemName VARCHAR(100))

CREATE PROCEDURE usp_massiveShopping 
AS
BEGIN
	DECLARE @StamatsBudget DECIMAL (19, 8)
	DECLARE @CurrentItemPrice DECIMAL (19, 8)
	DECLARE @CurrentItemName VARCHAR(50)
	
	DECLARE @Cnt INT = 1;
	SET @StamatsBudget = (SELECT ug.Cash FROM Users AS u
		INNER JOIN UsersGames AS ug
		ON ug.UserId = u.Id
		INNER JOIN Games AS g
		on ug.GameId = g.Id
		WHERE u.FirstName = 'Stamat' AND g.Name = 'Safflower')
	BEGIN TRAN
		WHILE (@StamatsBudget > 0 AND (SELECT COUNT(*) FROM Items) > @Cnt)
		BEGIN
		SET @CurrentItemPrice = (SELECT i.Price FROM Items AS i
		WHERE i.Id = @Cnt
		AND (i.MinLevel BETWEEN 11 AND 12
		OR i.MinLevel BETWEEN 19 and 21))
		SET @CurrentItemName = (SELECT i.Name FROM Items AS i
		WHERE i.Id = @Cnt
		AND (i.MinLevel BETWEEN 11 AND 12
		OR i.MinLevel BETWEEN 19 and 21))

		IF (@CurrentItemPrice <= @StamatsBudget)
		BEGIN
			SET @StamatsBudget -= @CurrentItemPrice
			INSERT INTO ResultTable (ItemName)
			VALUES (@CurrentItemName)
		END

		SET @Cnt += 1

		END
		--SELECT i.Name AS 'Item Name' FROM Items AS i
		--ORDER BY i.Name ASC
		COMMIT
END

--EXEC usp_massiveShopping 