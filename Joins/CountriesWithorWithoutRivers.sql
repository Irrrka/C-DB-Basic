SELECT top 5 C.CountryName, R.RiverName
FROM Countries as C
left join CountriesRivers as CR
on c.CountryCode=CR.CountryCode
left join Rivers  as R
on CR.RiverId=R.Id
left join Continents as Cn
on C.ContinentCode=Cn.ContinentCode
where cn.ContinentName like 'Africa'
order by c.CountryName asc
