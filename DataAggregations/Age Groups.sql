select w.AgeGroup, Sum(w.Coun) as WizardCount 
from
(select case
	when wd.Age>= 0  and wd.Age<=10 then '[0-10]'
	when wd.Age>= 11 and wd.Age<=20 then '[11-20]'
	when wd.Age>= 21 and wd.Age<=30 then '[21-30]'
	when wd.Age>= 31 and wd.Age<=40 then '[31-40]'
	when wd.Age>= 41 and wd.Age<=50 then '[41-50]'
	when wd.Age>= 51 and wd.Age<=60 then '[51-60]'
	when wd.Age>= 61 then '[61+]' 
end as AgeGroup,
COUNT(wd.Id) as Coun
from WizzardDeposits as WD group by wd.Age)	as w
group by w.AgeGroup
