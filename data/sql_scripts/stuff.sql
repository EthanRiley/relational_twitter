/*For all customers, provide a list containing the company name, contact person, contact title, and phone number.
*/
SELECT CompanyName, ContactName, ContactTitle, Phone
FROM Customers

/* For all products get a list of current stock levels */
SELECT ProductName, UnitsInStock
FROM Products;

/* Provide a list of products from Supplier with an id of 12 that cost more than $25. */
SELECT ProductName, UnitPrice
FROM Products
WHERE SupplierID = 12 AND UnitPrice > 25;

/* Provide a list of employees who hold the title of Sales Representative and are based in London. */
SELECT FirstName, LastName, Title, City
FROM Employees
WHERE Title = 'Sales Representative' AND City = 'London';

/* What’s the average price of all products we sell?*/
SELECT AVG(UnitPrice)
FROM Products;

/* What’s the average price of all non-discontinued products we sell? */
SELECT AVG(UnitPrice)
FROM Products
WHERE Discontinued = 0;

/* What is the date of the first order we ever processed? */
SELECT MIN(OrderDate)
FROM Orders;

/* How many orders has “Alfreds Futterkiste” placed with us? */
SELECT COUNT(OrderID)
FROM Orders
WHERE CustomerID = 'ALFKI';

/* Which cities in either Ireland or Poland did Michael Suyama (an employee) ship items to customers? */
SELECT ShipCity
FROM Orders JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE Country = 'Ireland' OR Country = 'Poland' AND FirstName = 'Michael' AND LastName = 'Suyama';

/* Which products have suppliers in Germany? */
SELECT ProductName
FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Country = 'Germany';

/* Which, if any, of those products from Germany are on backorder? */
SELECT ProductName
FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Country = 'Germany' AND UnitsInStock > UnitsOnOrder;

/* Provide a list of all suppliers that Northwind purchases products in the Confections category from. */
SELECT CompanyName
FROM Suppliers JOIN Products ON Suppliers.SupplierID = Products.SupplierID 
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE CategoryName = 'Confections';
