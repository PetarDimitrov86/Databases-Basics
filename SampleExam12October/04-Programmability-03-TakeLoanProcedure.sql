CREATE PROCEDURE usp_TakeLoan (@CustomerID INT, @LoanAmount DECIMAL(18, 2), @Interest DECIMAL(18, 2), @StartDate DATE)
AS
BEGIN
	BEGIN TRAN
	DECLARE @UpperLoanBorder DECIMAL(18, 2) = 100000
	DECLARE @LowerLoanBorder DECIMAL(18, 2) = 0.01
	
	INSERT INTO Loans (StartDate, Amount, Interest, CustomerID, ExpirationDate)
	VALUES (@StartDate, @LoanAmount, @Interest, @CustomerID, NULL)

	IF (@LoanAmount > @UpperLoanBorder OR @LoanAmount < @LowerLoanBorder)
	BEGIN
		ROLLBACK
		RAISERROR('Invalid Loan Amount.', 16, 1)
	END
	ELSE
	BEGIN
	COMMIT
	END
END

--EXEC usp_TakeLoan @CustomerID = 1, @LoanAmount = 500, @Interest = 1, @StartDate='2016-09-15'
