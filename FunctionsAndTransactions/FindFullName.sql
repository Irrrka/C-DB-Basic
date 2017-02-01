CREATE PROCEDURE usp_GetHoldersFullName
AS
BEGIN
	SELECT CONCAT(Ah.FirstName, ' ', Ah.LastName) AS FullName FROM AccountHolders AS Ah
END
