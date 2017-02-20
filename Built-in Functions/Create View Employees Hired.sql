CREATE VIEW V_EmployeesHiredAfter2000
as
SELECT E.FirstName, E.LastName
from Employees as E
WHERE YEAR(E.HireDate)>2000
