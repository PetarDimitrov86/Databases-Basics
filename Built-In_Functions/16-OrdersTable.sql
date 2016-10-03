SELECT O.ProductName, O.OrderDate,
DATEADD(DAY, 3, O.OrderDate) AS "Pay Due",
DATEADD(MONTH, 1, O.OrderDate) AS "Delivery Due"
FROM [dbo].Orders AS O