SELECT 
    Country, 
    MAX(TotalSpent)
FROM
    (SELECT
        i.BillingCountry AS 'Country',
        SUM(i.Total) AS 'TotalSpent'
    FROM Invoice i
    GROUP BY Country)