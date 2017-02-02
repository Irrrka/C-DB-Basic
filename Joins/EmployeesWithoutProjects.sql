SELECT top 3 E.EmployeeID, E.FirstName
FROM Employees as E
LEFT JOIN EmployeesProjects as EP
on EP.EmployeeID=E.EmployeeID
where Ep.ProjectID IS NULL
ORDER BY E.EmployeeID ASC
