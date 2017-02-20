SELECT G.Name, 
(case 
when DATEPART(HOUR, g.Start) >=0 and DATEPART(HOUR, g.Start)<12 then 'Morning' 
when DATEPART(HOUR, g.Start) >=12 and DATEPART(HOUR, g.Start)<18 then 'Afternoon' 
when DATEPART(HOUR, g.Start) >=18 and DATEPART(HOUR, g.Start)<24 then 'Evening' 
end) as 'Part of the Day',
(CASE
when G.Duration<=3 then 'Extra Short' 
when G.Duration>=4 and  G.Duration<=6 then 'Short'
when G.Duration>6 then 'Long'
ELSE 'Extra Long'
end) as 'Duration'
FROM Games AS G
order by 1,3
