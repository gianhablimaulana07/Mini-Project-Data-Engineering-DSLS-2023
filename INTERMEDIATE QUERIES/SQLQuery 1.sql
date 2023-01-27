SELECT DATENAME(MONTH,(OrderDate)) AS Bulan_Order , COUNT(*) AS Jumlah_Customer 
FROM Orders
WHERE YEAR(OrderDate) = 1997
GROUP BY DATENAME(MONTH,(OrderDate))
