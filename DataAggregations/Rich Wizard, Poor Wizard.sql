select SUM(temptable.Difference)
from

(SELECT WD.FirstName AS 'Host Wizard', WD.DepositAmount as 'Host Wizard Deposit',
WW.FirstName AS 'Guest Wizard', WW.DepositAmount as 'Guest Wizard Deposit', 
WD.DepositAmount-WW.DepositAmount as 'Difference'
FROM WizzardDeposits AS WD
Left JOIN  WizzardDeposits AS WW
on wd.Id=ww.Id-1) as temptable
