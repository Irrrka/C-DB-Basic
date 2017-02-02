SELECT top 5 E.EmployeeID, e.FirstName, p.Name as ProjectName FROM Employees as e
left join EmployeesProjects as EP
on e.EmployeeID=ep.EmployeeID
left join Projects as P
on ep.ProjectID=P.ProjectID
where p.StartDate>'2002-08-13'
and p.EndDate is null
order by e.EmployeeID
