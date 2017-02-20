SELECT WD.DepositGroup, WD.IsDepositExpired, avg(WD.DepositInterest)
FROM WizzardDeposits AS WD
WHERE WD.DepositStartDate>='01/01/1985'
GROUP BY WD.DepositGroup, WD.IsDepositExpired
ORDER BY WD.DepositGroup DESC, 
WD.IsDepositExpired ASC
