CREATE PROCEDURE usp_GetEmployeesFromTown (@TownName VARCHAR(50))
AS
BEGIN
	DECLARE @Town as VARCHAR(50)
	SET @Town=@TownName
SELECT E.FirstName, E.LastName
FROM  [dbo].[Towns] as T
JOIN  [dbo].[Addresses] as A
ON A.TownID = T.TownID
JOIN  [dbo].[Employees]	as E
ON E.AddressID=A.AddressID
WHERE T.Name = @Town
END
