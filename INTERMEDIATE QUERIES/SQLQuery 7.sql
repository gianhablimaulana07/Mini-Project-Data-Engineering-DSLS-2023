SELECT P.ProductName, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM Products AS P
INNER JOIN [Order Details] AS OD ON P.ProductID = OD.ProductID
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
WHERE YEAR(O.OrderDate) = 1997
GROUP BY P.ProductName
ORDER BY SUM(OD.UnitPrice * OD.Quantity) DESC
OFFSET 0 ROWS FETCH FIRST 5 ROWS ONLY
