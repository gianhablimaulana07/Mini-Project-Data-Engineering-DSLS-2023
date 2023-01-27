SELECT C.CompanyName, P.ProductName 
FROM Customers AS C
INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
INNER JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
INNER JOIN Products AS P ON OD.ProductID = P.ProductID
WHERE (P.ProductName = 'Chai') AND (MONTH(O.OrderDate) = 6 AND YEAR(O.OrderDate) = 1997)
