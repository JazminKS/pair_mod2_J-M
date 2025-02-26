SELECT EmployeeID, LastName, FirstName 
FROM employees;

SELECT ProductName
FROM products
WHERE UnitPrice BETWEEN 0 AND 5;

SELECT ProductName
FROM products
WHERE UnitPrice IS NULL;

SELECT *
FROM products;

SELECT ProductName
FROM products
WHERE ProductID < 20 AND UnitPrice < 15;

SELECT ProductName
FROM products
WHERE ProductID > 20 AND UnitPrice > 15;

SELECT DISTINCT ShipCountry
FROM orders;

SELECT ProductName, UnitPrice
FROM products
LIMIT 10;

SELECT ProductName, UnitPrice
FROM products
ORDER BY ProductID DESC
LIMIT 10;

SELECT DISTINCT OrderID
FROM orderdetails;

SELECT DISTINCT ProductID
FROM orderdetails;

ALTER TABLE orderdetails
ADD COLUMN ImporteTotal INT;

UPDATE orderdetails
SET ImporteTotal = UnitPrice*Quantity;

SELECT *
FROM orderdetails;

SELECT OrderID, ImporteTotal
FROM orderdetails
ORDER BY ImporteTotal DESC
LIMIT 3;

SELECT OrderID
FROM orderdetails
ORDER BY ImporteTotal DESC
LIMIT 5
OFFSET 4;