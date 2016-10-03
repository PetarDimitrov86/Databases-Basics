SELECT C.CountryName, C.IsoCode FROM [dbo].[Countries] AS C
WHERE C.CountryName LIKE '%a%a%a%'
ORDER BY C.IsoCode