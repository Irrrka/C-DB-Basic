select W.DepositGroup, MAX(MagicWandSize) as LongestMagicWand
from WizzardDeposits as W
GROUP BY W.DepositGroup
