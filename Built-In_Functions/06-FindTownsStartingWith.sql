SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE SUBSTRING(T.Name, 1, 1) = 'M'
   OR  SUBSTRING(T.Name, 1, 1) = 'K'
   OR  SUBSTRING(T.Name, 1, 1) = 'B'
   OR  SUBSTRING(T.Name, 1, 1) = 'E'
ORDER BY T.Name ASC

--Second version, all letters in a single IN
SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE SUBSTRING(T.Name, 1, 1) IN ('M', 'K', 'B', 'E')
ORDER BY T.Name ASC

--Third version using WildCards
SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE T.Name LIKE 'M%'
   OR T.Name LIKE 'K%'
   OR T.Name LIKE 'B%'
   OR T.Name LIKE 'E%'
ORDER BY T.Name ASC
