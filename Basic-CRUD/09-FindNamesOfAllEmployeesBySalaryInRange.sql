SELECT E.FirstName, E.LastName, E.JobTitle FROM [dbo].Employees AS E
WHERE E.Salary >= 20000 AND E.Salary <= 30000

--Second version with  BETWEEN AND 
SELECT E.FirstName, E.LastName, E.JobTitle FROM [dbo].Employees AS E
WHERE E.Salary BETWEEN 20000 AND 30000
