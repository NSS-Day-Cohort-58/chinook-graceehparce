SELECT
    t.Name AS 'TrackName',
    COUNT(il.TrackId) AS 'TimesPurchased'
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY TrackName
ORDER BY TimesPurchased DESC
LIMIT 5