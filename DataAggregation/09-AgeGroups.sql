SELECT CASE
	WHEN wd.Age <= 10 THEN '[0-10]'
	WHEN wd.Age <= 20 THEN '[11-20]'
	WHEN wd.Age <= 30 THEN '[21-30]'
	WHEN wd.Age <= 40 THEN '[31-40]'
	WHEN wd.Age <= 50 THEN '[41-50]'
	WHEN wd.Age <= 60 THEN '[51-60]'
	ELSE '[61+]' 
	END AS "AgeGroup", COUNT(*) AS "WizzardCount"
FROM [dbo].[WizzardDeposits] AS wd
GROUP BY CASE
	WHEN wd.Age <= 10 THEN '[0-10]'
	WHEN wd.Age <= 20 THEN '[11-20]'
	WHEN wd.Age <= 30 THEN '[21-30]'
	WHEN wd.Age <= 40 THEN '[31-40]'
	WHEN wd.Age <= 50 THEN '[41-50]'
	WHEN wd.Age <= 60 THEN '[51-60]'
	ELSE '[61+]' 
	END