USE HSD;


ALTER TABLE SEMINAR MODIFY COLUMN SeminarTitle VARCHAR(100);


DELETE FROM INVOICE_LINE;
DELETE FROM INVOICE;
DELETE FROM SEMINAR;
DELETE FROM CUSTOMER;


INSERT INTO CUSTOMER (CustomerID, LastName, FirstName, Address, City, State, ZipCode, Phone) VALUES
(1, 'Smith', 'John', '123 Main St', 'Dallas', 'TX', '75201', '214-555-1234'),
(2, 'Johnson', 'Mary', '456 Oak Ave', 'Houston', 'TX', '77002', '713-555-2345'),
(3, 'Thompson', 'Robert', '789 Pine Blvd', 'Dallas', 'TX', '75202', '214-555-3456'),
(4, 'Davis', 'Jennifer', '321 Cedar St', 'Austin', 'TX', '78701', '512-555-4567'),
(5, 'Taylor', 'Michael', '654 Birch Ln', 'Dallas', 'TX', '75203', '214-555-5678');


INSERT INTO SEMINAR (SeminarID, SeminarTitle, SeminarDate, SeminarLocation, SeminarCost) VALUES
(101, 'Heather Sweeney Seminar Live in Dallas on 25-OCT-13', '2013-10-25', 'Dallas', 149.99),
(102, 'Heather Sweeney Seminar Live in Houston', '2013-11-15', 'Houston', 149.99),
(103, 'Marketing Strategies Workshop', '2013-12-05', 'Austin', 199.99),
(104, 'Leadership Development Seminar', '2014-01-10', 'Dallas', 249.99),
(105, 'Customer Service Excellence', '2014-02-20', 'San Antonio', 129.99);


INSERT INTO INVOICE (InvoiceNumber, CustomerID, InvoiceDate, TotalAmount) VALUES
(1001, 1, '2013-10-15', 149.99),
(1002, 3, '2013-10-18', 149.99),
(1003, 5, '2013-10-20', 149.99),
(1004, 2, '2013-11-05', 149.99),
(1005, 4, '2013-11-10', 199.99);


INSERT INTO INVOICE_LINE (InvoiceLineID, InvoiceNumber, SeminarID, Quantity, UnitPrice, LineTotal) VALUES
(10001, 1001, 101, 1, 149.99, 149.99),
(10002, 1002, 101, 1, 149.99, 149.99),
(10003, 1003, 101, 1, 149.99, 149.99),
(10004, 1004, 102, 1, 149.99, 149.99),
(10005, 1005, 103, 1, 199.99, 199.99);
