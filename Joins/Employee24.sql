   SELECT E.EmployeeID, E.FirstName, p.Name as ProjectName
   FROM Employees as E

   LEFT JOIN EmployeesProjects as EP
   on E.EmployeeID=EP.EmployeeID

   LEFT JOIN Projects as P
   ON EP.ProjectID=p.ProjectID
   and p.StartDate < '2005-01-01'
  where e.EmployeeID=24
