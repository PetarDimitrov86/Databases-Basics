SELECT SUM(l.Amount) AS TotalLoanAmount, MAX(l.Interest) AS MaxInterest, MIN(e.Salary) AS MinEmployeeSalary FROM Loans AS l
INNER JOIN EmployeesLoans AS el
ON el.LoanID = l.LoanID
INNER JOIN Employees AS e
ON el.EmployeeID = e.EmployeeID