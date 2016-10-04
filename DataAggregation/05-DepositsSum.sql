SELECT w.DepositGroup, SUM(w.DepositAmount) AS "TotalSum"
FROM [dbo].[WizzardDeposits] AS w
GROUP BY w.DepositGroup