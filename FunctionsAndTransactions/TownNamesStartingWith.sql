CREATE PROCEDURE usp_GetTownsStartingWith (@StartString VARCHAR(50)) 
AS
BEGIN
	DECLARE @givenString AS VARCHAR(50)
	SET @givenString = @StartString
SELECT t.Name FROM [dbo].[Towns] AS t
WHERE SUBSTRING(t.Name, 1, LEN(@givenString))=@givenString
END
