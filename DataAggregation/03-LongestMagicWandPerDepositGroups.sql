SELECT w.DepositGroup, MAX(w.MagicWandSize) AS "LongestMagicWand"
FROM [dbo].[WizzardDeposits] AS w
GROUP BY w.DepositGroup