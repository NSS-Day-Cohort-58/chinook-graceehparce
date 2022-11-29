SELECT  
    i.InvoiceLineId, 
    i.InvoiceId, 
    i.UnitPrice, 
    i.Quantity, 
    t.Name
FROM InvoiceLine i
JOIN Track t
WHERE i.TrackId = t.TrackId