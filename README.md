HSD Database Project
This repository contains SQL scripts for creating and populating a database for a seminar management system. The HSD (Heather Sweeney Designs) database tracks customers, seminars, invoices, and invoice line items.
Project Structure
The project consists of three main SQL scripts:

HSD-Create-Tables.sql - Creates the database schema with tables and relationships
HSD-Insert-Data.sql - Populates the tables with sample data
HSD-Retrieved-Data.sql - Contains queries to retrieve and analyze data

Database Schema
The database includes the following tables:

CUSTOMER - Stores customer information including contact details and address
SEMINAR - Contains information about available seminars, including title, date, location, and cost
INVOICE - Tracks sales invoices with references to customers
INVOICE_LINE - Stores the individual line items for each invoice, linking to specific seminars

Entity Relationship Diagram
The database follows this basic structure:

A customer can have multiple invoices (one-to-many)
An invoice belongs to one customer (many-to-one)
An invoice can have multiple invoice lines (one-to-many)
A seminar can appear on multiple invoice lines (one-to-many)

Installation Instructions
Prerequisites

MySQL Server 5.7 or higher
MySQL Workbench (recommended for easier execution)

Setup Steps

Create the Database
sqlCREATE DATABASE HSD;
USE HSD;

Create Tables

Open MySQL Workbench and connect to your MySQL server
Open the HSD-Create-Tables.sql file
Execute the script to create all tables and relationships


Insert Sample Data

Open the HSD-Insert-Data.sql file
Execute the script to populate the tables with sample data


Run Queries

Open the HSD-Retrieved-Data.sql file
Execute the script to run the sample queries



Sample Queries
The project includes several queries demonstrating how to extract useful information from the database:

List all customers located in Dallas
Find customers in Dallas with last names starting with 'T'
Find invoices for specific seminar sessions

Notes for Development

If encountering issues with data length, you may need to adjust column sizes:
sqlALTER TABLE SEMINAR MODIFY COLUMN SeminarTitle VARCHAR(100);

To reset the database for fresh inserts:
sqlDELETE FROM INVOICE_LINE;
DELETE FROM INVOICE;
DELETE FROM SEMINAR;
DELETE FROM CUSTOMER;


License
This project is available for educational purposes.
