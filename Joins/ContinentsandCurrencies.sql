SELECT Curdata.ContinentCode, Curdata.CurrencyCode, Curdata.CurrUs as CurrencyUssage
from
(SELECT C.ContinentCode, C.CurrencyCode, COUNT(C.CurrencyCode) as CurrUs,
DENSE_RANK() OVER (PARTITION BY c.ContinentCode ORDER BY COUNT(c.CurrencyCode) DESC) AS Currank
FROM Countries AS C
GROUP BY C.ContinentCode, C.CurrencyCode) AS Curdata
where Curdata.Currank=1 and Curdata.CurrUs<>1
