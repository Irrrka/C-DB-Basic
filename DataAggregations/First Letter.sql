select distinct substring(wd.FirstName,1,1)
from WizzardDeposits as wd
where wd.DepositGroup like 'Troll Chest'
