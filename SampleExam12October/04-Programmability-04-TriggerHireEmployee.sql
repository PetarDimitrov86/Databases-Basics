CREATE TRIGGER tr_hireEmployee 
ON Employees
AFTER INSERT
AS
BEGIN
	DECLARE @newEmployeeID INT = (SELECT inserted.EmployeeID FROM inserted)
	DECLARE @newEmployeeLoanID INT = (SELECT TOP 1 el.LoanID FROM EmployeesLoans AS el
	ORDER BY el.EmployeeID DESC)
	INSERT INTO EmployeesLoans(EmployeeID, LoanID)
	VALUES (@newEmployeeID, @newEmployeeLoanID)
END

--INSERT INTO Employees VALUES (31, 'Jake', '20161212', 500, 2)