CREATE PROCEDURE usp_GetEmployeesSalaryAboveNumber  (@Salary MONEY)
AS
BEGIN
DECLARE @givenNumber AS MONEY
SET @givenNumber=@Salary
SELECT E.FirstName, E.LastName
FROM [dbo].[Employees] as E
WHERE e.Salary>=@givenNumber
END
