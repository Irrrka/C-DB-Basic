select WD.DepositGroup, SUM(WD.DepositAmount) AS 'Total Sum'
from [dbo].[WizzardDeposits] as WD
GROUP BY WD.DepositGroup, MagicWandCreator
HAVING MagicWandCreator LIKE 'Ollivander family'
