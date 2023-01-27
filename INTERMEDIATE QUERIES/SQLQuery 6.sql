SELECT C.CompanyName, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM Customers AS C
INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
WHERE YEAR(O.OrderDate) = 1997
GROUP BY C.CompanyName
HAVING SUM(OD.UnitPrice * OD.Quantity) > 500
