SELECT e.EmployeeID, e.FirstName, e.ManagerId, e2.FirstName as ManagerName 
FROM Employees as E
inner join Employees as e2
on e.ManagerID=e2.EmployeeID
where e.ManagerID in (3,7)
order by e.EmployeeID asc
