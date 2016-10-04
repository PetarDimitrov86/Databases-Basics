SELECT DISTINCT LEFT(w.FirstName, 1) AS "first_letter" FROM [dbo].[WizzardDeposits] AS w
WHERE w.DepositGroup = 'Troll Chest'