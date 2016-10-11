SELECT ABS(SUM(wd.DepositAmount - wdJoin.DepositAmount)) FROM [dbo].[WizzardDeposits] AS wd
INNER JOIN [dbo].[WizzardDeposits] AS wdJoin
ON wd.Id = wdJoin.Id + 1