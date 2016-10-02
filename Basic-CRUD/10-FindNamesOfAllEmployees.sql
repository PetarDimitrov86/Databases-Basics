SELECT E.FirstName + ' ' + E.MiddleName + ' ' + E.LastName AS "Full Name" FROM [dbo].Employees AS E
WHERE E.Salary = 25000 
   OR E.Salary = 14000
   OR E.Salary = 12500
   OR E.Salary = 23600

--Second version using IN (Using + to concatenate gives as a result NULL if one of the used columns in the query is NULL)
SELECT E.FirstName + ' ' + E.MiddleName + ' ' + E.LastName AS "Full Name" FROM [dbo].Employees AS E
WHERE E.Salary IN (25000, 14000, 12500, 23600)

--Third version using CONCAT (Won't work in judge, CONCAT replaces NULL entries with ' ')
SELECT CONCAT(E.FirstName, ' ', E.MiddleName, ' ', E.LastName) AS "Full Name" FROM [dbo].Employees AS E
WHERE E.Salary IN (25000, 14000, 12500, 23600)
