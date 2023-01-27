CREATE VIEW Order_Details 
AS 
SELECT O.OrderID, P.ProductID, P.ProductName, OD.UnitPrice, OD.Quantity, OD.Discount, (1-OD.Discount)*OD.UnitPrice AS HargaSetelahDiskon
FROM Products AS P
INNER JOIN [Order Details] AS OD ON P.ProductID = OD.ProductID
INNER JOIN Orders AS O ON OD.OrderID = O.OrderID
GO
-- Query the view  
SELECT *
FROM Order_Details 