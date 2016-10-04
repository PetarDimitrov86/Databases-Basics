SELECT w.DepositGroup, SUM(w.DepositAmount) AS "TotalSum"
FROM [dbo].[WizzardDeposits] AS w
WHERE w.MagicWandCreator = 'Ollivander family'
GROUP BY w.DepositGroup
