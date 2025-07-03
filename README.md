****BankDB SQL Project — Customer & Transactions View***
---------------------------------------------------------
Description:
This project creates a simple Bank Database (BankDB) using MySQL. It includes tables for Customers and their Transactions, along with a View that joins the two tables 
to provide a user-friendly overview of customer transactions.

Objective==> Learn to create and use views
Tools ==> DB Browser for SQLite / MySQL Workbench

Database Objects Created:
--------------------------------
Database: BankDB
Tables==>
Customer – stores customer details like ID, name, and city
Transaction – stores transactions with amount, date, type (Deposit/Withdraw)
View==>
CustomerTransactionView – joins Customer and Transaction to show readable combined data

Features==>
--------
> Relational schema using primary and foreign keys
> Use of reserved keyword Transaction handled using backticks (`)
> Reusable view for simplified data access
>> Sample queries to filter based on:
<>Transaction type
<>Customer name
<>Amount threshold

