SELECT w.DepositGroup, w.MagicWandCreator, MIN(w.DepositCharge) AS "MinDepositCharge"
FROM [dbo].[WizzardDeposits] AS w
GROUP BY w.DepositGroup, w.MagicWandCreator
ORDER BY w.MagicWandCreator, w.DepositGroup ASC