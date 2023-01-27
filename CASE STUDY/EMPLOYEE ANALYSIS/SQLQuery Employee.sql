SELECT (E.FirstName + ' ' + E.LastName) AS Employee_Name, E.Title, COUNT(O.OrderID) AS Number_of_Order, COUNT(OD.Discount) AS Number_of_Discount
FROM Employees AS E
INNER JOIN Orders AS O ON E.EmployeeID = O.EmployeeID
INNER JOIN [Order Details] AS OD ON O.OrderID = OD.OrderID
WHERE OD.Discount > 0
GROUP BY (E.FirstName + ' ' + E.LastName), E.Title


