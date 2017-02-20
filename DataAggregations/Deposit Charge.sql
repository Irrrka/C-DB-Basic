select WD.DepositGroup, WD.MagicWandCreator, Min(WD.DepositCharge)
from WizzardDeposits as WD
GROUP BY WD.DepositGroup, WD.MagicWandCreator
