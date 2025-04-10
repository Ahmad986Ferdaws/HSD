
SHOW TABLES;



SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE City = 'Dallas';


SELECT LastName, FirstName, Phone
FROM CUSTOMER
WHERE City = 'Dallas' AND LastName LIKE 'T%';

SELECT InvoiceNumber
FROM INVOICE
WHERE InvoiceNumber IN (
    SELECT DISTINCT InvoiceNumber
    FROM INVOICE_LINE
    WHERE SeminarID = (
        SELECT SeminarID
        FROM SEMINAR
        WHERE SeminarTitle = 'Heather Sweeney Seminar Live in Dallas on 25-OCT-13'
    )
);
