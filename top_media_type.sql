SELECT 
    MediaType,
    MAX(NumberOfSales) AS NumberOfSales
FROM(
    SELECT 
        m.Name AS 'MediaType',
        COUNT(m.MediaTypeId)*(il.Quantity) AS 'NumberOfSales'
    FROM Invoice i
    JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON il.TrackId = t.TrackId
    JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
    GROUP BY MediaType 
    ORDER BY NumberOfSales DESC)