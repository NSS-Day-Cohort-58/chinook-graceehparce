SELECT
    TrackName,
    TimesPurchased
FROM(
    SELECT
        t.Name AS 'TrackName',
        COUNT(il.TrackId) AS 'TimesPurchased'
    FROM Invoice i
    JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    WHERE i.InvoiceDate LIKE '2013%'
    GROUP BY TrackName
    ORDER BY TimesPurchased DESC) top
WHERE top.TimesPurchased = (
    SELECT MAX(TimesPurchased) AS 'MaxTrackPurchases'
    FROM(
        SELECT
            t.Name AS 'TrackName',
            COUNT(il.TrackId) AS 'TimesPurchased'
        FROM Invoice i
        JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
        JOIN Track t ON t.TrackId = il.TrackId
        WHERE i.InvoiceDate LIKE '2013%'
        GROUP BY TrackName
        ORDER BY TimesPurchased DESC))
GROUP BY TrackName