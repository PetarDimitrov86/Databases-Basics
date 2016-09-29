UPDATE [dbo].[Payments]
SET TaxRate = TaxRate - (3 * TaxRate) / 100

SELECT P.TaxRate FROM [dbo].Payments AS P