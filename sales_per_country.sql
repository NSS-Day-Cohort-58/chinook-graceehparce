SELECT
    i.BillingCountry AS 'Country',
    COUNT(i.BillingCountry) AS 'NumberOfSales'
FROM Invoice i
GROUP BY Country