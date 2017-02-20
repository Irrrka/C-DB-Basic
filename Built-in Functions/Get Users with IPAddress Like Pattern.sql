SELECT U.Username, U.IpAddress
from Users as U
WHERE U.IpAddress LIKE '___.1%.%.___'
ORDER BY 1
