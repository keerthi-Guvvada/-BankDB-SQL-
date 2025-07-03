CREATE DATABASE BankDB;
USE BankDB;

-- Create Customer table
CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    Customer_Name VARCHAR(20),
    City VARCHAR(10)    
);

-- Create Transaction table (wrapped in backticks to avoid reserved keyword issue)
CREATE TABLE `Transaction` (
    Transaction_id INT PRIMARY KEY,
    Customer_id INT,
    Transaction_Date DATE,
    Amount DECIMAL(10, 2),
    Transaction_type VARCHAR(10),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
);

-- Insert Customers
INSERT INTO Customer VALUES
(1, 'Keerthi', 'Hyderabad'),
(2, 'Harika', 'SKLM'),
(3, 'Mahesh', 'Vizag');

-- Insert Transactions
INSERT INTO `Transaction` VALUES
(101, 1, '2025-07-01', 5000.00, 'Deposit'),
(102, 1, '2025-07-03', 2000.00, 'Withdraw'),
(103, 2, '2025-07-02', 3000.00, 'Deposit'),
(104, 3, '2025-07-04', 4000.00, 'Deposit'),
(105, 3, '2025-07-05', 1500.00, 'Withdraw');

-- Create View (corrected column names)
CREATE VIEW CustomerTransactionView AS
SELECT 
    C.Customer_Name, 
    C.City, 
    T.Transaction_Date, 
    T.Transaction_type, 
    T.Amount
FROM 
    Customer C
JOIN 
    `Transaction` T ON C.Customer_id = T.Customer_id;


-- Use the View

-- View all transactions
SELECT * FROM CustomerTransactionView;

-- 1. View only deposits
SELECT * FROM CustomerTransactionView 
WHERE Transaction_type = 'Deposit';

-- 2. View all transactions of customer 'Keerthi'
SELECT * FROM CustomerTransactionView 
WHERE Customer_Name = 'Keerthi';

-- 3. View transactions above 3000
SELECT * FROM CustomerTransactionView 
WHERE Amount > 3000;

