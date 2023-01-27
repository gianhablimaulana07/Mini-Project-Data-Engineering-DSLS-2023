SELECT P.ProductName, SUM(P.UnitsOnOrder) AS UnitsOnOrder 
FROM Products AS P
INNER JOIN [Order Details] AS OD 
	ON P.ProductID = OD.ProductID
INNER JOIN Orders AS O 
	ON OD.OrderID = O.OrderID 
WHERE (MONTH(O.OrderDate) = 1 AND YEAR(O.OrderDate) = 1997)
GROUP BY P.ProductName
ORDER BY SUM(P.UnitsOnOrder) DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY
