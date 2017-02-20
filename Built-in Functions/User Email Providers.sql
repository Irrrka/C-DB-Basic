SELECT U.Username, SUBSTRING(u.Email,CHARINDEX('@',U.EMAIL)+1,LEN(U.EMAIL)) as 'Email Provider'
from Users as U
ORDER by 2, 1
