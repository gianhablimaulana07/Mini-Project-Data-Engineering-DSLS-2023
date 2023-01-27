SELECT OD.OrderID, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM [Order Details] AS OD
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
GROUP BY OD.OrderID
HAVING SUM(OD.UnitPrice * OD.Quantity) <= 100;

SELECT OD.OrderID, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM [Order Details] AS OD
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
GROUP BY OD.OrderID
HAVING SUM(OD.UnitPrice * OD.Quantity) BETWEEN 100 AND 250;

SELECT OD.OrderID, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM [Order Details] AS OD
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
GROUP BY OD.OrderID
HAVING SUM(OD.UnitPrice * OD.Quantity) BETWEEN 250 AND 500;

SELECT OD.OrderID, SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM [Order Details] AS OD
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
GROUP BY OD.OrderID
HAVING SUM(OD.UnitPrice * OD.Quantity) > 500;