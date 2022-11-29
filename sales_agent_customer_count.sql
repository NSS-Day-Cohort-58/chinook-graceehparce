
SELECT
    e.FirstName || " " || e.LastName AS 'FullName',
    COUNT(c.SupportRepId) AS 'NumberOfCustomers'
FROM Customer c 
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY FullName



Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
Employee full name
Total number of customers assigned to each employee (even if it's zero)