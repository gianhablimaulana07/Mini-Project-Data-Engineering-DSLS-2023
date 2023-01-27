SELECT O.OrderID, S.CompanyName, (DAY(CAST(O.ShippedDate AS DATETIME)) - DAY(CAST(O.RequiredDate AS DATETIME))) AS Promised_Time, O.ShipCountry
FROM Orders AS O
INNER JOIN Shippers AS S ON O.ShipVia = S.ShipperID
WHERE (DAY(CAST(O.ShippedDate AS DATETIME)) - DAY(CAST(O.RequiredDate AS DATETIME))) > 0
