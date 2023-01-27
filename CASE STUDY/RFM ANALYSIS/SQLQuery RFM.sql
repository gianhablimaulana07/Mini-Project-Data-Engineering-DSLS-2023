CREATE VIEW RFM01
AS
SELECT C.CompanyName, 
			 max(O.OrderDate) AS recency,
			 count(*) AS frequency,
			 avg(OD.UnitPrice) AS monetary
	   FROM [Order Details] AS OD
			LEFT JOIN Orders AS O
			ON OD.OrderID = O.OrderID
			LEFT JOIN Customers AS C
			ON O.CustomerID  = C.CustomerID 
			GROUP BY C.CompanyName;
GO

CREATE VIEW RFM02
AS
SELECT CompanyName,
recency,
frequency,
monetary,
ntile(4) OVER (ORDER BY recency) AS rfm_recency,
ntile(4) OVER (ORDER BY frequency) AS rfm_frequency,
ntile(4) OVER (ORDER BY monetary) AS rfm_monetary
FROM RFM01
GO

SELECT CompanyName,recency,frequency,monetary, rfm_recency, rfm_frequency, rfm_monetary, (CAST(rfm_monetary AS VARCHAR) + CAST(rfm_recency AS VARCHAR) + CAST(rfm_frequency AS VARCHAR)) AS rfm_cell_string
FROM RFM02

