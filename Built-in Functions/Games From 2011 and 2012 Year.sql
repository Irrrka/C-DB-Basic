SELECT TOP 50 G.Name as 'Game', format(G.Start, 'yyyy-MM-dd') AS 'Start'
FROM GAMES AS G
WHERE YEAR(G.START) IN (2011, 2012)
ORDER BY G.START, G.Name
