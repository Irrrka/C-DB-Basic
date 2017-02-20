select E.DepartmentID, MAX(E.Salary) as 'MaxSalary'
from Employees as E
group by E.DepartmentID
having MAX(E.Salary) not between 30000 and 70000
