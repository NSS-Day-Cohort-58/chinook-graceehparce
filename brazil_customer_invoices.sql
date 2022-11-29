SELECT
    i.InvoiceId,
    i.BillingCountry,
    i.InvoiceDate,
    c.FirstName || " " || c.LastName as 'FullName'
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
WHERE i.BillingCountry = 'Brazil'

