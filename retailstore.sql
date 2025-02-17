#CREATE DATABASE RetailStoreDB;
#USE RetailStoreDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Email VARCHAR(50) UNIQUE,
    RegistrationDate DATE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2),
    StockQuantity INT CHECK (StockQuantity >= 0)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT CHECK (Quantity > 0),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE CASCADE
);
INSERT INTO Customers (FirstName, LastName, Email, RegistrationDate)
VALUES
('Ahmad', 'Mohammed', 'AhmadMohammed@Gmail.com', '2024-01-10'),
('Mohammed', 'Ahmad', 'Mohammedah@Gmail.com', '2024-02-15'),
('Hassan', 'Ahmad', 'hasoonahmad@Gmail.com', '2024-03-20'),
('Abdullah', 'Ahmad', 'abdullahhamada@Gmail.com', '2024-04-05'),
('Ali', 'Mohammed', 'alwamohammed@Gmail.com', '2024-05-12');


INSERT INTO Products (ProductName, Category, Price, StockQuantity)
VALUES
('Laptop', 'Electronics', 999.99, 10),
('Smartphone', 'Electronics', 599.99, 20),
('Headphones', 'Accessories', 199.99, 15),
('Backpack', 'Fashion', 49.99, 30),
('Running Shoes', 'Sports', 89.99, 25);

INSERT INTO Orders (CustomerID, ProductID, OrderDate, Quantity) 
VALUES
(1, 2, '2019-1-01', 1),  
(2, 1, '2022-2-02', 2),  
(3, 3, '2013-3-03', 1),
(4, 4, '2014-4-04', 3),  
(5, 5, '2020-5-05', 1); 
-- Show all records from each table.
 SELECT * FROM Customers;
 SELECT * FROM Products;
 SELECT * FROM Orders;

-- Show customers who registered after a specific date.
SELECT * FROM Customers
WHERE RegistrationDate > '2020-01-01';

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 3;
