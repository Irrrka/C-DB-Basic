select E.FirstName, E.LastName
from Employees as E
WHERE LEN(E.LastName)=5
