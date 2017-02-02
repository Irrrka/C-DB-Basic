select top 5 e.EmployeeID, e.JobTitle, e.AddressID, a.AddressText from Employees as e
inner join Addresses as a
on a.AddressID=e.AddressID
order by a.AddressID asc
