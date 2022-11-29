SELECT 
    FullName, 
    MAX(NumberOfSales) AS 'NumberOfSalesOverAll'
from(
    SELECT
        e.FirstName || " " || e.LastName AS 'FullName',
        SUM(i.InvoiceId) AS 'NumberOfSales'
    FROM Invoice i
    JOIN Customer c ON i.CustomerId = c.CustomerId
    JOIN Employee e ON c.SupportRepId = e.EmployeeId
    GROUP BY FullName)