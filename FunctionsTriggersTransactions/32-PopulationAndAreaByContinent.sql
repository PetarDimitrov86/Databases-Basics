SELECT c.ContinentName, 
		SUM(CAST(cou.AreaInSqKm AS BIGINT)) AS CountriesArea, 
		SUM(CAST(cou.Population AS BIGINT)) AS CountriesPopulation
		FROM Continents AS c
INNER JOIN Countries AS cou
ON c.ContinentCode = cou.ContinentCode
GROUP BY c.ContinentName
ORDER BY CountriesPopulation DESC