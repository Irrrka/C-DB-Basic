select top 5 e.EmployeeID, e.FirstName, e.Salary, d.Name  from Employees as e
inner join Departments as d
on d.DepartmentID=e.DepartmentID
where e.Salary>15000
order by d.DepartmentID asc
