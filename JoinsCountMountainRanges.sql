select MC.CountryCode, COUNT(M.MountainRange) AS MountainRanges
from Mountains as M
LEFT JOIN 	MountainsCountries as MC
on MC.MountainId=M.Id
GROUP BY MC.COUNTRYCODE
HAVING MC.CountryCode in ('US', 'RU', 'BG')
