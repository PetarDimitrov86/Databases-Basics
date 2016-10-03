SELECT T.TownID, T.Name FROM [dbo].Towns AS T
WHERE SUBSTRING(T.Name, 1, 1) = 'M'
   OR  SUBSTRING(T.Name, 1, 1) = 'K'
   OR  SUBSTRING(T.Name, 1, 1) = 'B'
   OR  SUBSTRING(T.Name, 1, 1) = 'E'
ORDER BY T.Name ASC