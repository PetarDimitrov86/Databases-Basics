CREATE VIEW V_EmployeesHiredAfter2000 AS

SELECT E.FirstName, E.LastName FROM [dbo].Employees AS E
WHERE E.HireDate > '2001-01-01'