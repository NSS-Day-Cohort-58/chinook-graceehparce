SELECT 
    STRFTIME('%Y', InvoiceDate) as "Year",
    COUNT(InvoiceId) as "InvoicesPerYear"
FROM Invoice 
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY Year