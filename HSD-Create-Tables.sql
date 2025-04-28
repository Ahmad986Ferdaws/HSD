-- HSD-Create-Tables.sql
-- Script to create tables for the HSD database

-- Drop tables if they exist (in reverse order of creation to handle foreign key constraints)
DROP TABLE IF EXISTS INVOICE_LINE;
DROP TABLE IF EXISTS INVOICE;
DROP TABLE IF EXISTS CUSTOMER;
DROP TABLE IF EXISTS SEMINAR;aaaaaa

-- Create CUSTOMER table
CREATE TABLE CUSTOMER (
    CustomerID INT PRIMARY KEY,
    LastName VARCHAR(25) NOT NULL,
    FirstName VARCHAR(25) NOT NULL,
    Address VARCHAR(35),
    City VARCHAR(35),
    State CHAR(2),
    ZipCode VARCHAR(10),
    Phone VARCHAR(12)
);

-- Create SEMINAR table
CREATE TABLE SEMINAR (
    SeminarID INT PRIMARY KEY,
    SeminarTitle VARCHAR(50) NOT NULL,
    SeminarDate DATE,
    SeminarLocation VARCHAR(35),
    SeminarCost DECIMAL(8,2)
);
