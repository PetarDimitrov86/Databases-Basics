SELECT T.Name FROM [dbo].Towns AS T
WHERE LEN(T.Name) IN (5, 6)
ORDER BY T.Name ASC