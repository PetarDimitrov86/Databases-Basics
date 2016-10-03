SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE SUBSTRING(T.Name, 1, 1) NOT IN ('R', 'D', 'B')
ORDER BY T.Name ASC