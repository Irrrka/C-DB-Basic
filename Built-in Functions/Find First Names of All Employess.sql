 select E.FirstName
 from Employees as E
 WHERE E.DepartmentID IN (3,10)
 and YEAR(E.HireDate) BETWEEN '1995' AND '2005'
