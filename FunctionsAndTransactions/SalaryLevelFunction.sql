CREATE FUNCTION ufn_GetSalaryLevel(@salary MONEY)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @EmployeeSalary as MONEY
	SET @EmployeeSalary=@salary
	DECLARE @SalaryLevel as VARCHAR(50)
	IF(@Salary<30000)
		BEGIN
			SET @SalaryLevel='Low'			
		END
	IF(@Salary>=30000 AND @Salary<=50000)
		BEGIN
			SET @SalaryLevel='Average'
		END
	IF(@Salary>50000)
		BEGIN
			SET @SalaryLevel='High'
		END
RETURN @SalaryLevel
END
