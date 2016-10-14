SELECT SUBSTRING(u.Email, CHARINDEX('@', u.Email) + 1, LEN(u.Email)) AS 'Email Provider', COUNT(*) FROM Users AS u
GROUP BY SUBSTRING(u.Email, CHARINDEX('@', u.Email) + 1, LEN(u.Email))
ORDER BY COUNT(*) DESC, SUBSTRING(u.Email, CHARINDEX('@', u.Email) + 1, LEN(u.Email)) ASC