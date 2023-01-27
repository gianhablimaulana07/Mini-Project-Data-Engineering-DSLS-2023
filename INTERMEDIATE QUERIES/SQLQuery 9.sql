CREATE PROCEDURE Invoice_Procedure
AS
BEGIN
SET NOCOUNT ON
 
SELECT C.CustomerID, C.CompanyName, O.OrderID, O.OrderDate, O.RequiredDate, O.ShippedDate
FROM 
Customers AS C
INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID
 
END

EXEC Invoice_Procedure