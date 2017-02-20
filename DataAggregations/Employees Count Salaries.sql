select Count(e.Salary)	 as Count
from Employees as e
Where E.ManagerId is null
