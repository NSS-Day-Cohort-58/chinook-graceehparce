SELECT 
    i.Total,
    c.Country,
    c.FirstName || " " || c.LastName as 'CustomerFullName',
    e.FirstName || " " || e.LastName as 'SalesAgentFullName'
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId








