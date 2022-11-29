SELECT 
    BillingCountry,
    COUNT(InvoiceId) as "InvoicesInCountry"
FROM Invoice 
GROUP BY BillingCountry

