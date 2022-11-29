SELECT
    a.Name AS 'FullName',
    COUNT(a.ArtistId)*(il.Quantity) AS 'NumberOfSales'
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.ArtistId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY FullName
ORDER BY NumberOfSales DESC
LIMIT 3

