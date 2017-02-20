select C.CountryName, C.IsoCode
from Countries as C
where LOWER(C.CountryName) like '%a%a%a%'
order by c.IsoCode
