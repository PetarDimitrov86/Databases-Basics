SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation FROM [dbo].[Countries] AS c
INNER JOIN MountainsCountries AS mc
ON c.CountryCode = mc.CountryCode
INNER JOIN Peaks AS p
ON mc.MountainId = p.MountainId
INNER JOIN Mountains AS m
ON p.MountainId = m.Id
WHERE c.CountryCode = 'BG' AND p.Elevation > 2835
ORDER BY p.Elevation DESC