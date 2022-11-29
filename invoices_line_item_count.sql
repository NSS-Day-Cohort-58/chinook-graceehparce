SELECT 
    i.InvoiceId,
    COUNT(il.InvoiceId) AS TotalLineItems
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId


