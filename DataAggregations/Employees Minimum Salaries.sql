select E.DepartmentID, Min(e.Salary) AS 'MinimumSalary'
from Employees as e
WHERE e.HireDate>='01/01/2000'
GROUP BY E.DepartmentID
HAVING E.DepartmentID in (2,5,7)
