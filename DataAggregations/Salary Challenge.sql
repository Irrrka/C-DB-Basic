select top 10 em.FirstName, em.LastName, em.DepartmentID from employees as em
join
(select * from
(
select e.DepartmentID, AVG(e.Salary) as avSalbyDep from Employees as e
group by e.DepartmentID
)  as avgsal) as joinavg
on 	joinavg.DepartmentID=em.DepartmentID
where em.Salary>joinavg.avSalbyDep
order by em.DepartmentID
