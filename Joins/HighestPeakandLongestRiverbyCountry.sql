select top 5 data.CountryName, max(data.HighestPeakElevation), max(data.LongestRiverLength) from
(select c.CountryName, p.Elevation as HighestPeakElevation, r.Length as LongestRiverLength from Countries as C
left join CountriesRivers as cr
on c.CountryCode=cr.CountryCode
left join Rivers as r
on cr.RiverId=r.Id
left join MountainsCountries as mc
on c.CountryCode=mc.CountryCode
left join Peaks as p
on mc.MountainId=p.MountainId) as data
group by data.CountryName
order by  max(data.HighestPeakElevation) desc, 	max(data.LongestRiverLength) desc , data.CountryName
