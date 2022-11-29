SELECT 
    i.InvoiceId,
    e.FirstName || " " || e.LastName as 'FullName'
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId




