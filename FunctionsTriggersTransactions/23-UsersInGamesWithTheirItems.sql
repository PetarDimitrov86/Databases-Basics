SELECT u.Username, g.Name, COUNT(ugi.ItemID), SUM(i.Price) FROM Users AS u
INNER JOIN UsersGames AS ug
ON u.Id = ug.UserId
INNER JOIN Games AS g
ON ug.GameId = g.Id
INNER JOIN UserGameItems AS ugi
ON ug.Id = ugi.UserGameId
INNER JOIN Items AS i
ON ugi.ItemId = i.Id
GROUP BY u.Username, g.Name 
HAVING COUNT(ugi.ItemID) >= 10
ORDER BY COUNT(ugi.ItemID) DESC, SUM(i.Price) DESC, u.Username ASC