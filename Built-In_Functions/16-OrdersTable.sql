--CREATE TABLE Orders
--(
--Id INT PRIMARY KEY IDENTITY,
--ProductName VARCHAR(50) NOT NULL,
--OrderDate DATE NOT NULL
--)

--INSERT INTO Orders (ProductName, OrderDate)
--VALUES
--('Butter', '2016-09-19 00:00:00.000'),
--('Milk', '2016-09-30 00:00:00.000'),
--('Cheese', '2016-09-04 00:00:00.000'),
--('Bread', '2015-12-20 00:00:00.000'),
--('Tomatoes', '2015-12-30 00:00:00.000')

SELECT O.ProductName, O.OrderDate,
DATEADD(DAY, 3, O.OrderDate) AS "Pay Due",
DATEADD(MONTH, 1, O.OrderDate) AS "Delivery Due"
FROM [dbo].Orders AS O
