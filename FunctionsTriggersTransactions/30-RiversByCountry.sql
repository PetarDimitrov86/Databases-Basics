SELECT c.CountryName, cont.ContinentName, 
		COUNT(r.RiverName) AS RiversCount, 
		CASE 
			WHEN SUM(r.Length) IS NULL THEN 0
			ELSE SUM(r.Length)
		END AS TotalLength FROM Rivers AS r
RIGHT OUTER JOIN CountriesRivers AS cr
ON r.Id = cr.RiverId
RIGHT OUTER JOIN Countries AS c
ON cr.CountryCode = c.CountryCode
RIGHT OUTER JOIN Continents AS cont
ON cont.ContinentCode = c.ContinentCode
GROUP BY c.CountryName, cont.ContinentName
ORDER BY COUNT(r.RiverName) DESC, SUM(r.Length) DESC, c.CountryName