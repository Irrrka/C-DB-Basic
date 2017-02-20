SELECT *
FROM Towns as T
WHERE T.Name LIKE 'M%'
OR T.Name LIKE 'K%'
OR T.Name LIKE 'B%'
OR T.Name LIKE 'E%' 
ORDER BY T.Name
