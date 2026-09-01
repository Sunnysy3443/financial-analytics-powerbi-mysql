CREATE DATABASE IF NOT EXISTS Financial_Analytics;
USE Financial_Analytics;

CREATE TABLE Dim_Product (
Product_ID INT PRIMARY KEY,
Product_Name VARCHAR(50),
Category VARCHAR(50)
);

INSERT INTO Dim_Product VALUES
(1, 'Enterprise Laptop', 'Hardware'),
(2, 'Cloud Storage License', 'Software'),
(3, 'IT Support Retainer', 'Services');

CREATE TABLE Fact_Sales (
Transcation_ID INT PRIMARY KEY,
Order_Date DATE,
Product_ID INT,
Revenue DECIMAL(10,2),
Target_Revenue DECIMAL(10,2),
FOREIGN KEY (PRODUCT_ID) REFERENCES Dim_Product(Product_ID)
);

INSERT INTO Fact_Sales VALUES
(1, '2025-01-15', 1, 15000.00, 12000.00),
(2, '2025-02-20', 2, 8000.00, 9000.00),
(3, '2025-03-10', 3, 5000.00, 5000.00),
(4, '2025-06-12', 1, 18000.00, 15000.00),
(5, '2026-01-18', 1, 22000.00, 18000.00),
(6, '2026-02-22', 2, 12000.00, 10000.00),
(7, '2026-03-15', 3, 7000.00, 6000.00),
(8, '2026-06-14', 1, 25000.00, 20000.00);

SELECT * FROM Fact_Sales JOIN Dim_Product;
SELECT p.Product_Name, f.Order_Date, f.Revenue, f.Target_Revenue
FROM Fact_Sales f JOIN Dim_Product p ON f.Product_ID = p.Product_ID;

SELECT p.Product_Name, f.Revenue FROM Fact_Sales f JOIN Dim_Product p ON f.Product_ID = p.Product_ID WHERE YEAR(f.Order_Date) = 2026;

SELECT p.Product_Name, f.Target_Revenue FROM Fact_Sales f JOIN Dim_Product p ON f.Product_ID = p.Product_ID WHERE Category = 'Software';