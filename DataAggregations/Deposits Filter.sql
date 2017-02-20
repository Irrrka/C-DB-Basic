select WD.DepositGroup, SUM(WD.DepositAmount) as TotalSUm
from WizzardDeposits as WD
where wd.MagicWandCreator like 'Ollivander family'
group by wd.DepositGroup
having SUM(WD.DepositAmount)<150000
order by wd.DepositGroup desc
