SELECT  
    i.InvoiceLineId, 
    i.InvoiceId, 
    i.UnitPrice, 
    i.Quantity, 
    t.Name,
    r.Name
FROM InvoiceLine i
JOIN Track t
ON i.TrackId = t.TrackId
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN Artist r
ON a.ArtistId = r.ArtistId
