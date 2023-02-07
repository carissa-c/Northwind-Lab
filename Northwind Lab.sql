

Create DATABASE NorthwindLAB;

use Northwind;

--1.
-- SELECT * FROM CUSTOMERS

--2.
-- SELECT Country FROM CUSTOMERS
    --Justin's Way:
    --SELECT DISTINCT Country FROM Customers;

--3.
-- SELECT * FROM Customers
-- WHERE CustomerID LIKE 'BL%'

    --Alt Command
    --WHERE CHARIDEX('ON', CustomerID)>0; 

--4.
-- SELECT TOP(100) * FROM Orders

--5.
-- SELECT * FROM Customers
-- WHERE PostalCode = '1010' OR PostalCode = '3012' OR PostalCode = '12209' OR PostalCode = '05023';

--6.
-- get from orders table

-- SELECT * FROM Orders
-- WHERE ShipRegion != 'NULL';
     --Justin's Way
     -- WHERE ShipRegion IS NOT NULL;

--7.
-- SELECT * FROM Customers
-- ORDER BY Country, City;

--8.
-- INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
-- VALUES ('SCOOBY', 'The Mystery Machine', 'Scooby-Doo', 'Detective', '123 Main Street', 'Detroit', 'MI', '48169', 'USA', '(313) 123-4567', null);

--9.
-- UPDATE Orders
-- SET ShipRegion = 'EuroZone'
-- WHERE ShipCountry = 'France';

--10.
-- SELECT * FROM [Order Details]
-- WHERE Quantity = 1;

-- DELETE FROM [Order Details]
-- WHERE Quantity = 1;

--11.
-- SELECT CustomerId FROM Orders
-- WHERE OrderID = '10290'

--12.
-- SELECT * FROM Orders;
-- JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--13.
-- SELECT * FROM Employees;
-- SELECT FirstName FROM Employees
-- WHERE ReportsTo IS NULL;

--14.
-- SELECT FirstName FROM Employees
-- WHERE ReportsTo = 2;

--15.

    --Extra Challenges  
    --Justin's Way
--1.
-- SELECT AVG(Quantity), MAX(Quantity), MIN(Quantity) FROM [Order Details]
-- GROUP BY OrderID;

--2.
-- SELECT AVG(Quantity) AS 'Avg', MAX(Quantity) AS 'MAX', MIN(Quantity) AS 'Min' FROM [Order]

--3.
-- SELECT * FROM Customers
-- WHERE City = 'London' OR City = 'Paris';

--4.
-- SELECT * FROM Orders
-- INNER JOIN Customers ON Orders.customerID = Customers.CustomerID;
-- SELECT * FROM Orders
-- LEFT JOIN Customers ON Orders.customerID = Customers.CustomerID;
-- SELECT * FROM Orders
-- RIGHT JOIN Customers ON Orders.customerID = Customers.CustomerID;

--6. 
-- SELECT FirstName FROM Employees;
-- ORDER BY FirstName;

--7.
-- SELECT SUM(UnitPrice * Quantity) AS 'Total', SUM(UnitPrice * Quantity) * (1 - Disount) * FROM [Order Details]
-- GROUP BY OrderID;
-- SELECT * FROM [Order Details]

--8.
-- SELECT * FROM Employees
-- WHERE HireDate >= '1/1/1994';

--9.
-- SELECT SUM(2023 - YEAR(HireDate)) AS 'Years' FROM Employees
-- Group BY EmployeeID;

--10.
-- SELECT * FROM Products
-- ORDER BY UnitsInStock ASC;
-- SELECT * FROM Products
-- ORDER BY UnitsInStock DESC;

--11.
-- SELECT * FROM Products
-- WHERE UnitsInStock < 6;

--12.
-- SELECT * FROM Products
-- WHERE Discontinued = 1;

--13. 
-- SELECT * FROM Products
-- WHERE ProductName LIKE '%Tofu%';

--14. 
-- SELECT ProductName FROM Products
-- WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

--15.
-- SELECT * FROM Employees
-- WHERE HireDate > '1/1/1993';

--16.
-- SELECT * FROM Employees
-- WHERE TitleOfCourtesy = 'Ms.' OR TitleOfCourtesy = 'Mrs.';

--17.
-- SELECT * FROM 
-- WHERE HomePhone LIKE '(206)%';