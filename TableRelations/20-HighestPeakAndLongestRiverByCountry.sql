SELECT TOP 5 c.CountryName, MAX(p.Elevation) AS "HighestPeakElevation", MAX(r.Length) FROM [dbo].[Countries] AS c
LEFT OUTER JOIN [dbo].[CountriesRivers] AS cr
ON c.CountryCode = cr.CountryCode
LEFT OUTER JOIN [dbo].[Rivers] AS r
ON cr.RiverId = r.Id
LEFT OUTER JOIN [dbo].[MountainsCountries] AS mc
ON c.CountryCode = mc.CountryCode
LEFT OUTER JOIN [dbo].[Mountains] AS m
ON mc.MountainId = m.Id
LEFT OUTER JOIN [dbo].[Peaks] AS p
ON m.Id = p.MountainId
GROUP BY c.CountryName
ORDER BY MAX(p.Elevation) DESC, MAX(r.Length) DESC, c.CountryName ASC