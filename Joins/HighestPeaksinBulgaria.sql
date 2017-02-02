select MC.CountryCode, M.MountainRange, P.PeakName, P.Elevation
from MountainsCountries as MC
LEFT JOIN Mountains AS M
ON M.ID=MC.MountainId
LEFT JOIN PEAKS	AS P
ON MC.MountainId=P.MountainId
WHERE MC.CountryCode='BG' AND 
P.Elevation>2835
ORDER BY P.Elevation DESC
