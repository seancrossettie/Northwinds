-- What are our 10 most expensive products?

SELECT TOP 10 ProductID [Product ID], ProductName [Product Name], UnitPrice [Price per Unit]
FROM Products
GROUP BY ProductID, ProductName, UnitPrice
ORDER BY UnitPrice DESC
