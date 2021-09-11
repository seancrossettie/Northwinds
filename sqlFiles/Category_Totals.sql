-- I need a list of sales figures broken down by category name. 
-- Include the total $ amount sold over all time and the total number of items sold.

SELECT 
	Totals.CategoryID, 
	Totals.Category, 
	SUM(Totals.Quantity) AS [Total Quantity Sold], 
	SUM(Totals.Quantity * Totals.UnitPrice) AS [Total Revenue]
	FROM (
		SELECT c.CategoryID, c. CategoryName AS [Category], p.ProductName, d.Quantity, d.UnitPrice
			FROM Orders o
			JOIN [Order Details] d
			ON o.OrderID = d.OrderID
				JOIN Products p
				ON p.ProductID = d.ProductID
					JOIN Categories c
					ON c.CategoryID = p.CategoryID
	) Totals

GROUP BY Totals.CategoryID, Totals.Category
ORDER BY Totals.CategoryID

