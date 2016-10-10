SELECT c.CountryCode, COUNT(mc.MountainId) FROM [dbo].[Countries] AS c
INNER JOIN [dbo].MountainsCountries AS mc
ON c.CountryCode = mc.CountryCode
INNER JOIN [dbo].[Mountains] AS m
ON m.Id = mc.MountainId
WHERE c.CountryCode IN ('BG', 'US', 'RU')
GROUP BY c.CountryCode