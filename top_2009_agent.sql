
SELECT 
    FullName, 
    MAX(NumberOfSales) AS 'NumberOfSales2009'
from(
    SELECT
        e.FirstName || " " || e.LastName AS 'FullName',
        COUNT(i.InvoiceId) AS 'NumberOfSales'
    FROM Invoice i
    JOIN Customer c ON i.CustomerId = c.CustomerId
    JOIN Employee e ON c.SupportRepId = e.EmployeeId
    WHERE i.InvoiceDate LIKE '2009%'
    GROUP BY FullName)