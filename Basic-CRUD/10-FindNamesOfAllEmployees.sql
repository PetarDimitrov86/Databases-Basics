SELECT E.FirstName + ' ' + E.MiddleName + ' ' + E.LastName AS "Full Name" FROM [dbo].Employees AS E
WHERE E.Salary = 25000 
   OR E.Salary = 14000
   OR E.Salary = 12500
   OR E.Salary = 23600

--Second version using IN
SELECT E.FirstName + ' ' + E.MiddleName + ' ' + E.LastName AS "Full Name" FROM [dbo].Employees AS E
WHERE E.Salary IN (25000, 14000, 12500, 23600)
