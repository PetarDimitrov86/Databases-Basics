SELECT p.PeakName, m.MountainRange, c.CountryName, cont.ContinentName FROM Peaks AS p
INNER JOIN Mountains AS m
ON p.MountainId = m.Id
INNER JOIN MountainsCountries AS mc
ON mc.MountainId = m.Id
INNER JOIN Countries AS c
ON mc.CountryCode = c.CountryCode
INNER JOIN Continents AS cont
ON c.ContinentCode = cont.ContinentCode
ORDER BY p.PeakName ASC, c.CountryName ASC