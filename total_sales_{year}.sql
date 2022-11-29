SELECT 
    STRFTIME('%Y', InvoiceDate) as "Year",
    SUM(Total) as "YearlyTotal"
FROM Invoice 
WHERE InvoiceDate LIKE '2009%' OR InvoiceDate LIKE '2011%'
GROUP BY Year








