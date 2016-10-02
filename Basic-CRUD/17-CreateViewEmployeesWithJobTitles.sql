CREATE VIEW V_EmployeeNameJobTitle AS
SELECT
CASE 
	WHEN E.MiddleName IS NOT NULL THEN E.FirstName + ' ' + E.MiddleName + ' ' + E.LastName
	WHEN E.MiddleName IS NULL THEN E.FirstName + '  ' + E.LastName
END
 AS "Full Name", E.JobTitle FROM dbo.Employees AS E
 
 --Version two using CONCAT to replace all NULL with ' '
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT CONCAT(E.FirstName, ' ', E.MiddleName, ' ', E.LastName) AS "Full Name", E.JobTitle 
FROM dbo.Employees AS E
