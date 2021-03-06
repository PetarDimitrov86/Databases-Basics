SELECT COUNT(c.CountryCode) 
FROM [dbo].[Countries] AS c
WHERE c.CountryCode NOT IN 
(SELECT cc.CountryCode FROM [dbo].[MountainsCountries] AS cc)

--Second version using LEFT JOIN (from denizz)
SELECT COUNT(c.CountryCode) FROM [dbo].[Countries] AS c
LEFT JOIN [dbo].[MountainsCountries] AS mc
ON c.CountryCode = mc.CountryCode
WHERE mc.MountainId IS NULL
