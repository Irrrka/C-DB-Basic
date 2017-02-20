select top 2 d.DepositGroup 
from
(select WD.DepositGroup, AVG(WD.MagicWandSize) as AVERAGE 
from WizzardDeposits as WD 
group by wd.DepositGroup ) as d
order by d.AVERAGE
